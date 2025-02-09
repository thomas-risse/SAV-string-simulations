#ifndef CUBIC_STRING_PROCESSOR_EIGEN_H
#define CUBIC_STRING_PROCESSOR_EIGEN_H

#include <cmath>
#include <vector>
#include <tuple>

#include <Eigen/Dense>

template <class T>
class CubicStringProcessorEigen {
    private:
        // Physical parameters
        T eta_0{0}, eta_1{0}, rho{0}, mu{0}, E{0}, I{0}, R{0}, A{0}, T0{0}, l0{};
        // Discretization parameters
        T dt{0}, sr{0}, h{0};
        int N{0};
        
        // Update coefficients
        Eigen::Vector<T, -1> Current0, D40, righthand;
        double Current1, Current2, Last0, Last1, D41, D42;

        // Nonlinear part
        Eigen::Vector<T, -1> g, dxq, dxq3, Vprime;
        double psi{0}, epsilon{0}, V{0};

        // State
        Eigen::Vector<T, -1> qlast, qnow, qnext;
    public:
        CubicStringProcessorEigen(float sampleRate);

        void updateDerivedConstants();

        void setTandLFromf0Beta();

        void setDissFromDecays();

        void modifyhFromBend();

        T geth() {return h;}

        T zeta(T omega, T gamma2, T kappa2);

        void reinitDsp(float sampleRate);

        void updateCoefficients();

        std::tuple<T, T, T> process(T input);

        // Higher level perceptive parameters
        T t60_0{0}, t60_1{0}, fd0{0}, fd1{0}, f0{0}, beta{0};
        // Control SAV parameter
        T lambda0{0};
        // Discretization parameters
        T alpha{0};
        // Excitation and listening positions
        T posex{0}, poslistL{0}, poslistR{0};
        // Pitch bend
        T bend{0}, fbend{0};


        int getN() {return N;};

};



#endif
