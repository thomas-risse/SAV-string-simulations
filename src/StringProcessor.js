export default class Vector extends Float32Array {
    init(i = 0) {
        this.fill(i);
    }
    
    copy(vec2) {
        for (let i = 0; i < this.length; i++) {
            this[i] = vec2[i];
        }
    }
    
    add(vec2, outvec) {
        for (let i = 0; i < this.length; i++) {
            outvec[i] = this[i] + vec2[i];
        }
    }
    
    minus(vec2, outvec) {
        for (let i = 0; i < this.length; i++) {
            outvec[i] = this[i] - vec2[i];
        }
    }

    mul(vec2, outvec) {
        for (let i = 0; i < this.length; i++) {
            outvec[i] = this[i] * vec2[i];
        }
    }
    
    sdiv(scalar, outvec) {
        for (let i = 0; i < this.length; i++) {
            outvec[i] = this[i] / scalar;
        }
    }
    
    cube(outvec) {
        for (let i = 0; i < this.length; i++) {
            outvec[i] = this[i] * this[i] * this[i];
        }
    }
    
    Dmin(h, outvec, scaling = 1){
        outvec[0] = this[0] / h * scaling;
        for (let i = 1; i < this.length; i++) {
            outvec[i] = (this[i] - this[i-1]) / h * scaling;
        }
        outvec[this.length] = -this[this.length-1] / h * scaling;
    }
    
    Dplus(h, outvec, scaling = 1){
        for (let i = 0; i < this.length-1; i++) {
            outvec[i] = (this[i+1] - this[i]) / h * scaling;
        }
    }
    
    dot(vec2, out) {
        out.value = 0;
        for (let i = 0; i < this.length; i++) {
            out.value += this[i] * vec2[i];
        }
    }
    
    norm1(out) {
        out.value = 0;
        for (let i = 0; i < this.length; i++) {
            out.value += Math.abs(this[i]);
        }
    }
    
    sign(outvec) {
        for (let i = 0; i < this.length; i++) {
            outvec[i] = Math.sign(this[i]);
        }
    }
}

class StringProcessor extends AudioWorkletProcessor {
    constructor() {
        super();
        // Default physical constants
        this.l0 = 1;
        this.T = 40;
        this.rho = 8000;
        this.E = 2e11;
        this.R = 2.9e-4;
        this.s_u0 = 0.5;
        this.s_u1 = 0;
        
        // Derived physical constants
        this.updateDerivedConstants();
        
        // Higher level parameters
        this.t60_0 = 12;
        this.t60_1000 = 6;
        this.setDissFromDecays();
        
        this.f0 = 50;
        this.beta = 0.0001;
        this.setTandLFromf0Beta();
        
        // Sav control setting
        this.alpha = 0.8;
        this.lambda0 = 100;
        
        // Excitation/Listening position
        this.posex = 0.5;
        this.poslist = 0.5;
        
        // State variables
        this.dspInit(sampleRate);
        
        console.log(this);
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
            / (2*this.mu)
        );
        this.N = Math.floor(Math.max(3, Math.min(1000, this.alpha * Math.floor(this.l0 / this.h))));
        // this.N = 30;
        console.log("N = ",this.N);
        this.h = this.l0 / this.N;
        
        this.updateCoefficients();
        
        // Initialize vectors
        this.qlast = new Vector(this.N-1);
        this.qmid = new Vector(this.N-1);
        this.qnow = new Vector(this.N-1);
        this.qnext = new Vector(this.N-1);
        this.g = new Vector(this.N-1);
        this.dxq =new Vector(this.N);
        this.dxq3 = new Vector(this.N);
        this.Vprime = new Vector(this.N-1);
        this.righthand = new Vector(this.N-1);
        this.dtq = new Vector(this.N-1);
        
        this.qlast.init();
        this.qmid.init();
        this.qnow.init();
        this.qnext.init();
        this.g.init();
        this.dxq.init();
        this.dxq3.init();
        this.Vprime.init();
        this.righthand.init();
        this.dtq.init();
        
        this.psi = 0;
        this.epsilon = 0;
        this.basegmod= 0;
        this.scaleshermann = 0;

        this.gdotqlast = {value: 0};
        this.gdotg = {value: 0};
        this.gdotrighthand = {value: 0};
        this.temp = {value: 0};

    }
    
    process(inputs, outputs) {
        // By default, the node has single input and output.
        const input = inputs[0];
        const output = outputs[0];
        if (input.length > 0) {
            for (let i = 0; i < output[0].length; i++) {
                output[0][i] = this.processSample(input[0][i]);
            }
            
            for (let channel = 1; channel < output.length; ++channel) {
                output[channel].set(output[0]);
            }
        } else {
            for (let i = 0; i < output[0].length; i++) {
                output[0][i] = this.processSample(0);
            }
            
            for (let channel = 1; channel < output.length; ++channel) {
                output[channel].set(output[0]);
            }
        }
        return true;
    }
    
    processSample(input) {
        // // SAV term (20% CPU)
        this.qnow.Dmin(this.h, this.dxq);
        
        this.dxq.cube(this.dxq3);
        
        const EA_T = this.E * this.A - this.T;
        this.dxq3.Dplus(this.h, this.Vprime, -(EA_T) / 2 * this.h);
        //
        this.V = 0;
        for (let i = 0; i < this.N; i++) {
            this.V += this.dxq3[i] * this.dxq[i] * this.h * EA_T / 8;
        }
        this.Vprime.sdiv(Math.sqrt(2 * this.V) + 1e-12, this.g);
        
        // Additional control term
        this.qnow.add(this.qlast, this.qmid);
        this.qmid.Dmin(this.h, this.dxq, 0.5);
        this.dxq.cube(this.dxq3);
        
        this.V = 0;
        for (let i = 0; i < this.N; i++) {
            this.V += this.dxq3[i] * this.dxq[i] * this.h * EA_T / 8;
        }
        
        this.epsilon = this.psi - Math.sqrt(2 * this.V);
        this.qnow.minus(this.qlast, this.dtq);
        this.dtq.norm1(this.temp);
        this.basegmod = - this.epsilon * this.lambda0 * this.dt / (this.temp.value + 1e-12);
        
        for (let i = 0; i < this.N-1; i++) {
            this.g[i] = this.g[i] + this.basegmod * Math.sign(this.dtq[i]);
        }
        
        
        // Filling righthand
        this.g.dot(this.qlast, this.gdotqlast);
        this.g.dot(this.g, this.gdotg);
        
        
        for (let i = 2; i < this.N-3; i++) {
            this.righthand[i] = this.current0 * this.qnow[i] 
            + this.last0 * this.qlast[i] 
            + this.current1 * (this.qnow[i+1] + this.qnow[i-1]) 
            + this.current2 * (this.qnow[i+2] + this.qnow[i-2]) 
            + this.last1 * (this.qlast[i+1] + this.qlast[i-1])
            + this.dt2/4 * 1 / this.h * this.g[i] * this.gdotqlast.value
            - this.dt2 * 1 / this.h * this.g[i] * this.psi;
        }
        // Boundaries
        this.righthand[0] = this.current0Bounds * this.qnow[0] 
            + this.last0 * this.qlast[0] 
            + this.current1 * (this.qnow[1]) 
            + this.current2 * (this.qnow[2]) 
            + this.last1 * (this.qlast[1])
            + this.dt2/4 * 1 / this.h * this.g[0] * this.gdotqlast.value
            - this.dt2 * 1 / this.h * this.g[0] * this.psi;
        
        this.righthand[this.N-2] = this.current0Bounds * this.qnow[this.N-2] 
            + this.last0 * this.qlast[this.N-2] 
            + this.current1 * (this.qnow[this.N-3]) 
            + this.current2 * (this.qnow[this.N-4]) 
            + this.last1 * (this.qlast[this.N-3])
            + this.dt2/4 * 1 / this.h * this.g[this.N-2] * this.gdotqlast.value
            - this.dt2 * 1 / this.h * this.g[this.N-2] * this.psi;
        
        this.righthand[1] = this.current0 * this.qnow[1]
            + this.last0 * this.qlast[1] 
            + this.current1 * (this.qnow[2] + this.qnow[0]) 
            + this.current2 * (this.qnow[3]) 
            + this.last1 * (this.qlast[2] + this.qlast[0])
            + this.dt2/4 * 1 / this.h * this.g[1] * this.gdotqlast.value
            - this.dt2 * 1 / this.h * this.g[1] * this.psi;
        
        this.righthand[this.N-3] = this.current0 * this.qnow[this.N-3]
            + this.last0 * this.qlast[this.N-3] 
            + this.current1 * (this.qnow[this.N-4] + this.qnow[this.N-2]) 
            + this.current2 * (this.qnow[this.N-5]) 
            + this.last1 * (this.qlast[this.N-4] + this.qlast[this.N-2])
            + this.dt2/4 * 1 / this.h * this.g[this.N-3] * this.gdotqlast.value
            - this.dt2 * 1 / this.h * this.g[this.N-3] * this.psi;
        
        
        // Excitation 
        this.righthand[Math.floor(this.posex * (this.N-2))] += this.dt2 * input / this.h;
        
        // Solving using shermann morrison
        this.g.dot(this.righthand, this.gdotrighthand);
        this.scaleshermann = - this.dt2/4 * 1 / this.h * this.gdotrighthand.value / (1 + this.term0 * this.dt2/4 * 1 / this.h * this.gdotg.value); 
        
        for (let i = 0; i < this.N-1; i++) {
            this.qnext[i] = this.term0 * (this.righthand[i] + this.term0 * this.scaleshermann* this.g[i]);
        }
        
        this.qnext.minus(this.qlast, this.dtq);
        this.g.dot(this.dtq, this.temp);

        this.psi = this.psi + 0.5 * this.temp.value;

        
        
        // Update state variables
        
        this.qlast.set(this.qnow);
        this.qnow.set(this.qnext);
        return 0.1*(this.qnow[Math.floor(this.poslist * (this.N-2))] - this.qlast[Math.floor(this.poslist * (this.N-2))]) / (this.dt * Math.sqrt(this.T * this.mu));
    }
    
    setDissFromDecays(){
        const gamma2 = this.T / this.mu;
        const kappa2 = this.E * this.I / (this.mu);
        const beta2_0 = this.zeta(2 * Math.PI, gamma2, kappa2);
        const beta2_1 = this.zeta(2 * Math.PI * 1000, gamma2, kappa2);
        
        this.s_u0 = Math.max(0, 6 * Math.log(10) / (beta2_1 - beta2_0) * (beta2_1 / this.t60_0 - beta2_0 / this.t60_1000));
        this.s_u1 = Math.max(0, 6 * Math.log(10) / (beta2_1 - beta2_0) * (-1 / this.t60_0 + 1 / this.t60_1000));
        console.log("s_u0 = ", this.s_u0, "s_u1 = ", this.s_u1);
    }
    
    zeta(omega, gamma2, kappa2){
        return (-gamma2 + Math.sqrt(gamma2 * gamma2 + 4 * omega * omega * kappa2)) / (2 * kappa2);
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
        this.current0 = 2 * this.mu 
        - 2 * Math.pow(this.dt/this.h, 2) * this.T
        - 4 * this.mu * this.s_u1 * this.dt / Math.pow(this.h, 2) 
        - Math.pow(this.dt, 2) * this.E * this.I * 6/Math.pow(this.h, 4);
        this.current0Bounds = this.current0 + Math.pow(this.dt, 2) * this.E * this.I / Math.pow(this.h, 4);
        
        this.last0 = -(1 - this.dt * this.s_u0) * this.mu
        + 4 * this.mu * this.dt * this.s_u1 / Math.pow(this.h, 2);
        this.current1 = Math.pow(this.dt / this.h, 2) * this.T 
        + Math.pow(this.dt, 2) * this.E * this.I * 4 / Math.pow(this.h, 4)
        + 2 * this.mu * this.s_u1 * this.dt / Math.pow(this.h, 2);
        this.current2 = - Math.pow(this.dt, 2) * this.E * this.I / Math.pow(this.h, 4);
        this.last1 = - 2 * this.mu * this.s_u1 * this.dt / (Math.pow(this.h, 2));
        
        this.term0 = 1 / (this.mu * (1 + this.dt * this.s_u0));
        this.dt2 = Math.pow(this.dt, 2);
    }
}


registerProcessor('string-processor', StringProcessor);