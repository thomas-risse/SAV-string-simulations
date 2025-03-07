#ifndef CUBIC_STRING_PROCESSOR_H
#define CUBIC_STRING_PROCESSOR_H

#include <cmath>
#include <vector>
#include <tuple>

#ifdef EIGENPROC
#include <Eigen/Dense>
#endif

template <class T>
class CubicStringProcessor {
    private:
        bool controlTerm{true};
        // Physical parameters
        T eta_0{0}, eta_1{0}, rho{0}, mu{0}, E{0}, I{0}, R{0}, A{0}, T0{0}, l0{0};
        // Discretization parameters
        T dt{0}, sr{0}, h{0};
        int N;


        #ifdef EIGENPROC
        // Update coefficients
        Eigen::Vector<T, -1> Current0, D40, righthand;
        double Current1, Current2, Last0, Last1, D41, D42;

        // Nonlinear part
        Eigen::Vector<T, -1> g, dxq, dxq3, Vprime;
        double psi{0}, epsilon{0}, V{0};

        // State
        Eigen::Vector<T, -1> qlast, qnow, qnext;
        #else
        // Intermediate algorithm variables
        T current0{0}, current0Bounds{0}, last0{0}, current1{0}, current2{0}, last1{0}, term0{0}, dt2{0};
        T psi{0}, V{0}, epsilon{0}, basegmod{0}, scaleshermann{0}, gdotqlast{0}, gdotg{0}, gdotrighthand{0}, temp{0};
        
        // Vectorial quantities
        std::vector<T> qlast, qmid, qnow, qnext, g, dxq, dxq3, Vprime, righthand, dtq;
        #endif

        // Excitation and listening positions
        T posex{0}, poslistL{0}, poslistR{0};
        T vl{0}, vr{0};
        // Pitch bend
        T bend{0}, fbend{0};
    public:
        CubicStringProcessor(float sampleRate, bool controlTerm = true);

        void updateDerivedConstants();

        void setTandLFromf0Beta();

        void setDissFromDecays();

        void modifyhFromBend();

        T zeta(T omega, T gamma2, T kappa2);

        void reinitDsp(float sampleRate);

        void updateCoefficients();

        std::tuple<T, T, T> process(T input, T bend = 0, T posex = 0.9, T poslistL = 0.3, T poslistR = 0.3);

        void vout();

        // Higher level perceptive parameters
        T t60_0{0}, t60_1{0}, fd0{0}, fd1{0}, f0{0}, beta{0};
        // Control SAV parameter
        T lambda0{0};
        // Discretization parameters
        T alpha{0};

        int getN() {return N;};

};



#endif
