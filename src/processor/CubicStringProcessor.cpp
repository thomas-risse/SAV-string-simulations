#include "CubicStringProcessor.h"
#include "vecMath.h"
#include "iostream"

template <class T>
CubicStringProcessor<T>::CubicStringProcessor(float sampleRate, bool controlTerm){
    this->controlTerm = controlTerm;
    // Default physical constants
    l0 = 1;
    T0 = 40;
    rho = 8000;
    E = 2e11;
    R = 2.9e-4;
    eta_0 = 0.5;
    eta_1 = 0;
        
    // Derived physical constants
    updateDerivedConstants();
        
    // Higher level parameters
    t60_0 = 12;
    t60_1 = 6;
    fd0 = 0;
    fd1 = 1000;
    setDissFromDecays();
        
    f0 = 100;
    beta = 1e-4;
    setTandLFromf0Beta();

    // Sav control setting
    alpha = 0.9;
    lambda0 = 100;
        
    // Excitation/Listening position
    posex = 0.72;
    poslistL = 0.3;
    poslistR = 0.3;

    // State variables
    reinitDsp(sampleRate);
};

template <class T>
void CubicStringProcessor<T>::updateDerivedConstants() {
    A = M_PI * R * R;
    I = M_PI * R * R * R * R / 4;
    mu = rho * A;
}

template <class T>
void CubicStringProcessor<T>::setTandLFromf0Beta() {
    T0 = sqrt( (pow(M_PI, 4)*E*pow(f0, 2)*pow(R, 6)*rho ) / (beta * (1+beta)) );
    l0 = sqrt( (pow(M_PI, 3)*E*pow(R, 4)) / (4 * beta * T0) );
}

template <class T>
void CubicStringProcessor<T>::setDissFromDecays() {
    double gamma2 = T0/mu;
    double kappa2 = E*I/mu;
    double beta2_0 = zeta(2*M_PI*fd0, gamma2, kappa2);
    double beta2_1 = zeta(2*M_PI*fd1, gamma2, kappa2);

    eta_0 = fmax(6 * log(10) / (beta2_1 - beta2_0) * (beta2_1/t60_0 - beta2_0/t60_1), 0);
    eta_1 = fmax(6 * log(10) / (beta2_1 - beta2_0) * (-1/t60_0 + 1/t60_1), 0);
}

template <class T>
void CubicStringProcessor<T>::modifyhFromBend() {
    // Only the length is modified for simplicity.
    // Inharmonicity is not taken into account.
    fbend = f0 * pow(2, bend/1200);
    //T lbend = 1/(2*fbend) * sqrt(T0/mu) * sqrt(1 + pow(M_PI, 3) * E * pow(R, 4) / (4 * l0 * l0));
    T a = fbend * fbend;
    T b = - T0 / (4*mu);
    T c = - pow(M_PI, 2) * E * I / mu;
    T delta = pow(b, 2) - 4 * a * c;
    T lbend = sqrt((-b + sqrt(delta)) / (2 * a));
    T gamma = dt * dt * T0 + 4 * dt * mu * eta_1;
    h = fmax(lbend / N, sqrt(
        (gamma
        + sqrt(gamma*gamma + 16 * mu * E * I * pow(dt, 2))) 
        / (2*mu)
    ));
}

template <class T>
T CubicStringProcessor<T>::zeta(T omega, T gamma2, T kappa2) {
    return (-gamma2 + sqrt(gamma2*gamma2 + 4*kappa2*omega*omega))/(2*kappa2);
}

template <class T>
void CubicStringProcessor<T>::reinitDsp(float sampleRate) {
    fbend = f0;
    // Recompute physical coefficients from high level parameters
    setDissFromDecays();
    setTandLFromf0Beta();
    updateDerivedConstants();

    modifyhFromBend();
    
    // Stability condition
    sr = sampleRate;
    dt = 1 / sr;
    T gamma = dt * dt * T0 + 4 * dt * mu * eta_1;
    h = sqrt(
        (gamma
        + sqrt(gamma*gamma + 16 * mu * E * I * pow(dt, 2))) 
        / (2*mu)
    );
    N = static_cast<int>(floor(fmax(3, fmin(1000, alpha * floor(l0 / h)))));
    h = l0 / N;
    
    updateCoefficients();
    
    #ifdef EIGENPROC
    // Initialisation of vectors to right size
    qlast = Eigen::Vector<T, -1>::Zero(N-1);
    qnow = Eigen::Vector<T, -1>::Zero(N-1);
    qnext = Eigen::Vector<T, -1>::Zero(N-1);
    g = Eigen::Vector<T, -1>::Zero(N-1);
            
    dxq = Eigen::Vector<T, -1>::Zero(N);
    dxq3 = Eigen::Vector<T, -1>::Zero(N);

    Vprime = Eigen::Vector<T, -1>::Zero(N-1);

    righthand = Eigen::Vector<T, -1>::Zero(N-1);
    
    psi = 0;

    #else
    
    // Initialize vectors
    qlast.resize(N-1);
    qmid.resize(N-1);
    qnow.resize(N-1);
    qnext.resize(N-1);
    g.resize(N-1);
    dxq.resize(N);
    dxq3.resize(N);
    Vprime.resize(N-1);
    righthand.resize(N-1);
    dtq.resize(N-1);
    
    vecMath::setValue(qlast, 0);
    vecMath::setValue(qmid, 0);
    vecMath::setValue(qnow, 0);
    vecMath::setValue(qnext, 0);
    vecMath::setValue(g, 0);
    vecMath::setValue(dxq, 0);
    vecMath::setValue(dxq3, 0);
    vecMath::setValue(Vprime, 0);
    vecMath::setValue(righthand, 0);
    vecMath::setValue(dtq, 0);
    
    psi = 0;
    epsilon = 0;
    basegmod= 0;
    scaleshermann = 0;
    gdotqlast = 0;
    gdotg = 0;
    gdotrighthand = 0;
    temp = 0;

    #endif
}

#ifdef EIGENPROC
template <class T>
void CubicStringProcessor<T>::updateCoefficients(){
        D40 = Eigen::Vector<T, -1>::Ones(N-1) * 6 / pow(h, 4);
        D40[0] = 5/ pow(h, 4);
        D40[N-2] = 5/ pow(h, 4);
        D41 = - 4/(pow(h, 4));
        D42 = 1/(pow(h, 4));
        Current0 = (2 * mu - 2 * pow(dt/h, 2) * T0
                    - 4 * mu * eta_1 * dt / pow(h, 2)) * Eigen::Vector<T, -1>::Ones(N-1)
                    - pow(dt, 2) * E * I * D40;
        Last0 = -(1 - dt * eta_0) * mu + 4 * mu * dt * eta_1 / pow(h, 2);
        Current1 = pow(dt/h, 2)*T0-pow(dt, 2) * E * I * D41 + 2*mu*eta_1*dt/pow(h, 2);
        Current2 = - pow(dt, 2) * E * I * D42;
        Last1 = - 2*mu*eta_1*dt/pow(h, 2);
}

template <class T>
std::tuple<T, T, T> CubicStringProcessor<T>::process(T input, T bend, T posex, T poslistL, T poslistR) {
    //Eigen::internal::set_is_malloc_allowed(false);
    // Pitch bend
    if (bend != this->bend) {
        this->bend = bend;
        modifyhFromBend();
        updateCoefficients();
    }
    // Excitation and listening positions
    if (posex != this->posex || poslistL != this->poslistL || poslistR != this->poslistR) {
        this->posex = std::clamp(posex, T(0), T(1));
        this->poslistL = std::clamp(poslistL, T(0), T(1));
        this->poslistR = std::clamp(poslistR, T(0), T(1));
    }

    // Compute g
    dxq.setZero();
    dxq.head(N-1) = qnow;
    dxq.tail(N-1) -= qnow;
    dxq /= h;

    dxq3 = dxq.array().cube();

    Vprime = -(E * A - T0) / 2 * (dxq3.tail(N-1) - dxq3.head(N-1));
    V = (E * A - T0) / 8 * h * (dxq3.cwiseProduct(dxq)).sum();

    g = Vprime / (sqrt(2 * V) + 1e-12);
    
    // G modification with regularisation term
    if (controlTerm) {
        dxq.setZero();
        dxq.head(N-1) = (qnow + qlast) / 2;
        dxq.tail(N-1) -= (qnow + qlast) / 2;
        dxq /= h;
        dxq3 = dxq.array().cube();
        V = (E * A - T0) / 8 * h * (dxq3.cwiseProduct(dxq)).sum();
        epsilon = psi - sqrt(2*V);
        g += -lambda0 * epsilon *dt * ((qnow-qlast).array()>0).select(Eigen::Vector<T, -1>::Ones(N-1), -Eigen::Vector<T, -1>::Ones(N-1)) / ((qnow-qlast).template lpNorm<1>() + 1e-12);
    }
    // Linear part
    righthand = Current0.cwiseProduct(qnow) + Last0 * qlast;
    righthand.head(N-2) += Current1*qnow.tail(N-2) + Last1*qlast.tail(N-2);
    righthand.tail(N-2) += Current1*qnow.head(N-2) + Last1*qlast.head(N-2);

    righthand.tail(N-3) += Current2*qnow.head(N-3);
    righthand.head(N-3) += Current2*qnow.tail(N-3);
    
    // External force
    righthand(static_cast<int>(floor(this->posex*(N-1)))) += pow(dt, 2) * input / h * (1 - (this->posex*(N-1) - floor(this->posex*(N-1))));
    righthand(static_cast<int>(ceil(this->posex*(N-1)))) += pow(dt, 2) * input / h * ((this->posex*(N-1) - floor(this->posex*(N-1))));
    
    // Nonlinear part
    righthand +=  pow(dt/2, 2) * 1/h * g * g.dot(qlast) 
                -  pow(dt, 2) * 1/h * g * psi;

    // Solving using shermann morrisson
    double term0 = 1 / (mu*(1+dt*eta_0));
    qnext = term0 * righthand
        - pow(dt/2, 2)*pow(term0, 2) * 1/h * g * g.dot(righthand) / (1 + term0 *pow(dt/2, 2) * 1/h * g.dot(g));

    psi = psi + 0.5 * g.dot(qnext - qlast);

    qlast = qnow;
    qnow = qnext;
    // Eigen::internal::set_is_malloc_allowed(true);
    vout();
    return { vl, vr,  epsilon / (sqrt(2*V) + 1e-12) };
}

template <class T>
void CubicStringProcessor<T>::vout() {
    vl = (
            (qnow(static_cast<int>(floor(poslistL * (N-1) )))- qlast(static_cast<int>(floor(poslistL * (N-1))))) * (1 - (poslistL*(N-1) - floor(poslistL*(N-1))))
            + (qnow(static_cast<int>(ceil(poslistL * (N-1) )))- qlast(static_cast<int>(ceil(poslistL * (N-1))))) * (poslistL*(N-1) - floor(poslistL*(N-1)))
         ) / (dt * sqrt(T0*mu));
    vr = (
            (qnow(static_cast<int>(floor(poslistR * (N-1) )))- qlast(static_cast<int>(floor(poslistR * (N-1))))) * (1 - (poslistR*(N-1) - floor(poslistR*(N-1))))
            + (qnow(static_cast<int>(ceil(poslistR * (N-1) )))- qlast(static_cast<int>(ceil(poslistR * (N-1))))) * (poslistR*(N-1) - floor(poslistR*(N-1)))
         ) / (dt * sqrt(T0*mu));
}

#else

template <class T>
void CubicStringProcessor<T>::updateCoefficients() {
    current0 = 2 * mu 
        - 2 * pow(dt/h, 2) * T0
        - 4 * mu * eta_1 * dt / pow(h, 2) 
        - pow(dt, 2) * E * I * 6/pow(h, 4);

    current0Bounds = current0 + pow(dt, 2) * E * I / pow(h, 4);
        
    last0 = -(1 - dt * eta_0) * mu
        + 4 * mu * dt * eta_1 / pow(h, 2);

    current1 = pow(dt / h, 2) * T0
        + pow(dt, 2) * E * I * 4 / pow(h, 4)
        + 2 * mu * eta_1 * dt / pow(h, 2);

    current2 = - pow(dt, 2) * E * I / pow(h, 4);

    last1 = - 2 * mu * eta_1 * dt / (pow(h, 2));

    term0 = 1 / (mu * (1 + dt * eta_0));

    dt2 = pow(dt, 2);
}

template <class T>
std::tuple<T, T, T> CubicStringProcessor<T>::process(T input, T bend, T posex, T poslistL, T poslistR) {
    /* Updates of h and positions : almost not time taken.*/
    // Pitch bend
    if (bend != this->bend) {
        this->bend = bend;
        modifyhFromBend();
        updateCoefficients();
    }
    // Excitation and listening positions
    if (posex != this->posex || poslistL != this->poslistL || poslistR != this->poslistR) {
        this->posex = std::clamp(posex, T(0), T(1));
        this->poslistL = std::clamp(poslistL, T(0), T(1));
        this->poslistR = std::clamp(poslistR, T(0), T(1));
    }

    /* SAV term : 71% of total time taken */
    /* 50% of which in the original SAV term computation */
    vecMath::Dmin(qnow, dxq, T(1/h));
    vecMath::cube(dxq, dxq3);
    vecMath::Dplus(dxq3, Vprime, -(E * A - T0)/2);

    V = 0;
    for (std::size_t i = 0; i < N; i++) {
        V += dxq3[i] * dxq[i] * (E * A - T0) * h / 8;
    }
    vecMath::sdiv(Vprime, g, sqrt(2 * V) + 1e-12);
    
    // Additional control term
    /* 50% of which in the oaddtitional SAV term computation */
    if (controlTerm) {
        vecMath::add(qnow, qlast, qmid, 0.5);
        vecMath::Dmin(qmid, dxq, 1/h);
        vecMath::cube(dxq, dxq3);
        
        V = 0;
        for (std::size_t i = 0; i < N; i++) {
            V += dxq3[i] * dxq[i] * h * (E * A - T0) / 8;
        }
        
        epsilon = psi - sqrt(2 * V);
        vecMath::substract(qnow, qlast, dtq, 1);
        vecMath::norm1(dtq, temp);
        basegmod = - epsilon * lambda0 * dt / (temp + 1e-12);
        
        for (std::size_t i = 0; i < N-1; i++) {
            g[i] = g[i] + basegmod * vecMath::sgn(dtq[i]);
        }
    }
    
    // Filling righthand
    vecMath::dot(g, qlast, gdotqlast);
    vecMath::dot(g, g, gdotg);

    /* Main loop: 12% of total time taken */
    
    for (std::size_t i = 2; i < N-3; i++) {
        righthand[i] = current0 * qnow[i] 
        + last0 * qlast[i] 
        + current1 * (qnow[i+1] + qnow[i-1]) 
        + current2 * (qnow[i+2] + qnow[i-2]) 
        + last1 * (qlast[i+1] + qlast[i-1])
        + dt2/4 * 1 / h * g[i] * gdotqlast
        - dt2 * 1 / h * g[i] * psi;
    }
    // Boundaries
    righthand[0] = current0Bounds * qnow[0] 
        + last0 * qlast[0] 
        + current1 * (qnow[1]) 
        + current2 * (qnow[2]) 
        + last1 * (qlast[1])
        + dt2/4 * 1 / h * g[0] * gdotqlast
        - dt2 * 1 / h * g[0] * psi;
    
    righthand[N-2] = current0Bounds * qnow[N-2] 
        + last0 * qlast[N-2] 
        + current1 * (qnow[N-3]) 
        + current2 * (qnow[N-4]) 
        + last1 * (qlast[N-3])
        + dt2/4 * 1 / h * g[N-2] * gdotqlast
        - dt2 * 1 / h * g[N-2] * psi;
    
    righthand[1] = current0 * qnow[1]
        + last0 * qlast[1] 
        + current1 * (qnow[2] + qnow[0]) 
        + current2 * (qnow[3]) 
        + last1 * (qlast[2] + qlast[0])
        + dt2/4 * 1 / h * g[1] * gdotqlast
        - dt2 * 1 / h * g[1] * psi;
    
    righthand[N-3] = current0 * qnow[N-3]
        + last0 * qlast[N-3] 
        + current1 * (qnow[N-4] + qnow[N-2]) 
        + current2 * (qnow[N-5]) 
        + last1 * (qlast[N-4] + qlast[N-2])
        + dt2/4 * 1 / h * g[N-3] * gdotqlast
        - dt2 * 1 / h * g[N-3] * psi;
    
    
    // External force
    righthand[static_cast<int>(floor(this->posex*(N-2)))] += pow(dt, 2) * input / h * (1 - (this->posex*(N-2) - floor(this->posex*(N-2))));
    righthand[static_cast<int>(ceil(this->posex*(N-2)))] += pow(dt, 2) * input / h * ((this->posex*(N-2) - floor(this->posex*(N-2))));
    
    /* Shermann Morrison : 10% of total time */
    // Solving using shermann morrison
    vecMath::dot(g, righthand, gdotrighthand);
    scaleshermann = - dt2/4 * 1 / h * gdotrighthand / (1 + term0 * dt2/4 * 1 / h * gdotg); 
    
    for (std::size_t i = 0; i < N-1; i++) {
        qnext[i] = term0 * (righthand[i] + term0 * scaleshermann* g[i]);
    }

    vecMath::substract(qnext, qlast, dtq, 1);
    vecMath::dot(g, dtq, temp);

    /* Psi update, state update : almost not time taken (less than 5% of total time)*/
    psi = psi + 0.5 * temp;

    // Update state variables
    qlast = qnow;
    qnow = qnext;

    vout();
    return {vl, vr, epsilon / (sqrt(2*V) + 1e-12)};
}

template <class T>
void CubicStringProcessor<T>::vout() {
    vl = (
            (qnow[static_cast<int>(floor(poslistL * (N-2) ))]- qlast[static_cast<int>(floor(poslistL * (N-2)))]) * (1 - (poslistL*(N-2) - floor(poslistL*(N-2))))
            + (qnow[static_cast<int>(ceil(poslistL * (N-2) ))]- qlast[static_cast<int>(ceil(poslistL * (N-2)))]) * (poslistL*(N-2) - floor(poslistL*(N-2)))
         ) / (dt * sqrt(T0*mu));
    vr = (
            (qnow[static_cast<int>(floor(poslistR * (N-2) ))]- qlast[static_cast<int>(floor(poslistR * (N-2)))]) * (1 - (poslistR*(N-2) - floor(poslistR*(N-2))))
            + (qnow[static_cast<int>(ceil(poslistR * (N-2) ))]- qlast[static_cast<int>(ceil(poslistR * (N-2)))]) * (poslistR*(N-2) - floor(poslistR*(N-2)))
         ) / (dt * sqrt(T0*mu));
}

#endif





template class CubicStringProcessor<double>;
template class CubicStringProcessor<float>;
