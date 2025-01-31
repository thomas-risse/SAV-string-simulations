import Vector from './Vector.js';

export default class StringGeom {
 constructor(samplerate) {
    // Default physical constants
    this.l0 = 1;
    this.T = 40;
    this.rho = 8000;
    this.E = 2e11;
    this.R = 2.9e-4;
    this.s_u0 = 0.5;
    this.s_u1 = 0.5;

    // Derived physical constants
    this.updateDerivedConstants();

    // Higher level parameters
    this.t60_0 = 12;
    this.t60_1000 = 6;
    this.setDissFromDecays();

    this.f0 = 100;
    this.beta = 0.001;
    this.setTandLFromf0Beta();

    // Sav control setting
    this.alpha = 0.9;
    this.lambda0 = 100;

    // Excitation/Listening position
    this.posex = 0.5;
    this.poslist = 0.5;

    // State variables
    this.dspInit(samplerate);
 }
 
 dspInit(samplerate) {
    // Recompute physical coefficients from high level parameters
    this.setDissFromDecays();
    this.setTandLFromf0Beta();
    this.updateDerivedConstants();
    

    // Stability condition
    this.sr = samplerate;
    this.dt = 1 / this.sr;
    this.h = Math.sqrt(
        (this.T * Math.pow(this.dt, 2) 
        + Math.sqrt(Math.pow(this.T, 2) * Math.pow(this.dt, 4) + 16 * this.mu * this.E * this.I * Math.pow(this.dt, 2))) 
        / (2 * this.mu)
    );
    this.N = Math.floor(Math.max(3, Math.min(1000, this.alpha * Math.floor(this.l0 / this.h))));
    this.h = this.l0 / this.N;

    this.updateCoefficients();

    // Initialize vectors
    this.qlast = new Vector(this.N-1);
    this.qnow = new Vector(this.N-1);
    this.qnext = new Vector(this.N-1);
    this.g = new Vector(this.N-1);
    this.dxq =new Vector(this.N);
    this.dxq3 = new Vector(this.N);
    this.Vprime = new Vector(this.N-1);
    this.righthand = new Vector(this.N-1);
    this.dtq = new Vector(this.N-1);

    this.qlast.init();
    this.qnow.init();
    this.qnext.init();
    this.g.init();
    this.dxq.init();
    this.dxq3.init();
    this.Vprime.init();
    this.righthand.init();
    this.dtq.init();

    this.psi = 0;
 }

 process(inputs, outputs) {
    // By default, the node has single input and output.
    const input = inputs[0];
    const output = outputs[0];

    for (let i = 0; i < output[0].length; i++) {
      output[0][i] = this.processSample(input[0][i]);
    }

    for (let channel = 1; channel < output.length; ++channel) {
      output[channel].set(output[0]);
    }
    return true;
  }

 processSample(input) {
    // SAV term
    //this.qnow.Dmin(this.h, this.dxq, 0);
//
    //this.dxq.cube(this.dxq3);
//
    //const EA_T = this.E * this.A - this.T;
    //this.dxq3.Dmin(this.h, this.Vprime, -(EA_T) / 2);
    //
    //this.V = 0;
    //for (let i = 0; i < this.N; i++) {
    //    this.V += this.dxq3[i] * this.dxq[i] * this.h * EA_T / 8;
    //}
    //this.Vprime.sdiv(this.V, this.g);

    // Additional control term

    // Filling righthand
    const gdotqlast = this.g.dot(this.qlast);
    const gdotg = this.g.dot(this.g);


    for (let i = 2; i < this.N-3; i++) {
        this.righthand[i] = this.current0 * this.qnow[i] 
            + this.last0 * this.qlast[i] 
            + this.current1 * (this.qnow[i+1] + this.qnow[i-1]) 
            + this.current2 * (this.qnow[i+2] + this.qnow[i-2]) 
            + this.last1 * (this.qlast[i+1] + this.qlast[i-1]);
            + Math.pow(this.dt/2, 2) * 1 / this.h * this.g[i] * gdotqlast
            - Math.pow(this.dt, 2) * 1 / this.h * this.g[i] * this.psi;
    }
    // Boundaries
    this.righthand[0] = this.current0Bounds * this.qnow[0] 
                        + this.last0 * this.qlast[0] 
                        + this.current1 * (this.qnow[1]) 
                        + this.current2 * (this.qnow[2]) 
                        + this.last1 * (this.qlast[1]);
                        + Math.pow(this.dt/2, 2) * 1 / this.h * this.g[0] * gdotqlast
                        - Math.pow(this.dt, 2) * 1 / this.h * this.g[0] * this.psi;
    this.righthand[this.N-2] = this.current0Bounds * this.qnow[this.N-2] 
                        + this.last0 * this.qlast[this.N-2] 
                        + this.current1 * (this.qnow[this.N-3]) 
                        + this.current2 * (this.qnow[this.N-4]) 
                        + this.last1 * (this.qlast[this.N-3]);
                        + Math.pow(this.dt/2, 2) * 1 / this.h * this.g[this.N-2] * gdotqlast
                        - Math.pow(this.dt, 2) * 1 / this.h * this.g[this.N-2] * this.psi;

    this.righthand[1] = this.current0 * this.qnow[1]
                        + this.last0 * this.qlast[1] 
                        + this.current1 * (this.qnow[2] + this.qnow[0]) 
                        + this.current2 * (this.qnow[3]) 
                        + this.last1 * (this.qlast[2] + this.qlast[0]);
                        + Math.pow(this.dt/2, 2) * 1 / this.h * this.g[1] * gdotqlast
                        - Math.pow(this.dt, 2) * 1 / this.h * this.g[1] * this.psi;
    
    this.righthand[this.N-3] = this.current0 * this.qnow[this.N-3]
                        + this.last0 * this.qlast[this.N-3] 
                        + this.current1 * (this.qnow[this.N-4] + this.qnow[this.N-2]) 
                        + this.current2 * (this.qnow[this.N-5]) 
                        + this.last1 * (this.qlast[this.N-4] + this.qlast[this.N-2]);
                        + Math.pow(this.dt/2, 2) * 1 / this.h * this.g[this.N-3] * gdotqlast
                        - Math.pow(this.dt, 2) * 1 / this.h * this.g[this.N-3] * this.psi;
    

    // Excitation 
    this.righthand[Math.floor(this.posex * (this.N-2))] += Math.pow(this.dt, 2) * input / this.h;

    // Solving using shermann morrison
    const gdotrighthand = this.g.dot(this.righthand);
    const scaleshermann = - Math.pow(this.dt/2, 2) * 1 / this.h * gdotrighthand / (1 + Math.pow(this.dt/2, 2) * 1 / this.h * gdotg); 

    for (let i = 0; i < this.N-1; i++) {
        this.qnext[i] = this.term0 * (this.righthand[i] - this.term0 * scaleshermann * this.g[i]);
    }

    this.qnext.add(this.qlast, this.dtq, -1);
    this.psi = this.psi + 0.5 * this.g.dot(this.dtq);

    // Update state variables
    this.qlast = this.qnow;
    this.qnow = this.qnext;
    return (this.qnow[Math.floor(this.poslist * (this.N-2))] - this.qlast[Math.floor(this.poslist * (this.N-2))]) / (this.dt * Math.sqrt(this.T * this.mu));
 }

 setDissFromDecays(){
    const gamma2 = this.T / this.mu;
    const kappa2 = this.E * this.I / (this.mu);
    const beta2_0 = this.zeta(2 * Math.PI, gamma2, kappa2);
    const beta2_1 = this.zeta(2 * Math.PI * 1000, gamma2, kappa2);

    this.s_u0 = Math.max(0, 6 * Math.log(10) / (beta2_1 - beta2_0) * (beta2_1 / this.t60_0 - beta2_0 / this.t60_1000));
    this.s_u1 = Math.max(0, 6 * Math.log(10) / (beta2_1 - beta2_0) * (-1 / this.t60_0 + 1 / this.t60_1000));
 }

 zeta(omega, gamma2, kappa2){
    return (-gamma2 + Math.sqrt(gamma2 * gamma2 + 4 * omega * omega * kappa2)) / (2 * omega);
 }

 setTandLFromf0Beta(){
    this.T = Math.sqrt(
        (Math.pow(Math.PI, 4) * this.E * this.f0 * this.f0 * Math.pow(this.R, 6) * this.rho) / (this.beta * (1 + this.beta))
    );
    this.l0 = Math.sqrt(
        Math.pow(Math.PI, 3) * this.E * Math.pow(this.R, 4) / (4 * this.beta * this.T)
    );
 }

 updateDerivedConstants(){
    this.A = Math.PI * this.R * this.R;
    this.I = Math.PI * this.R * this.R * this.R * this.R / 4;
    this.mu = this.rho * this.A;
 }

 updateCoefficients(){
    this.current0 = 2 * this.mu - 2 * Math.pow(this.dt/this.h, 2) ;//- 4 * this.mu * this.s_u1 * this.dt / Math.pow(this.h, 2) - Math.pow(this.dt, 2) * this.E * this.I * 6/Math.pow(this.h, 4);
    this.current0Bounds = 2 * this.mu - 2 * Math.pow(this.dt/this.h, 2) - 4 * this.mu * this.s_u1 * this.dt / Math.pow(this.h, 2) - Math.pow(this.dt, 2) * this.E * this.I * 5/Math.pow(this.h, 4);

    this.last0 = -(1 - this.dt * this.s_u0) * this.mu + 4 * this.mu * this.dt * this.s_u1 / Math.pow(this.h, 2);
    this.current1 = Math.pow(this.dt / this.h, 2) * this.T + Math.pow(this.dt, 2) * this.E * this.I * 4 / Math.pow(this.h, 4);
    this.current2 = - Math.pow(this.dt, 2) * this.E * this.I * 1 / Math.pow(this.h, 4);
    this.last1 = - 2 * this.mu * this.s_u1 * this.dt / (Math.pow(this.h, 2));

    this.term0 = 1 / (this.mu * (1 * this.dt * this.s_u0));
 }
}