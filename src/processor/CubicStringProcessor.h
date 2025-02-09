#ifndef CUBIC_STRING_PROCESSOR_H
#define CUBIC_STRING_PROCESSOR_H

#include <cmath>
#include <vector>
#include <tuple>

template <class T>
class CubicStringProcessor {
    private:
        // Physical parameters
        T eta_0{0}, eta_1{0}, rho{0}, mu{0}, E{0}, I{0}, R{0}, A{0}, T0{0}, l0{};
        // Discretization parameters
        T dt{0}, sr{0}, h{0};
        int N;
        // Intermediate algorithm variables
        T current0{0}, current0Bounds{0}, last0{0}, current1{0}, current2{0}, last1{0}, term0{0}, dt2{0};
        T psi{0}, V{0}, epsilon{0}, basegmod{0}, scaleshermann{0}, gdotqlast{0}, gdotg{0}, gdotrighthand{0}, temp{0};
        // Vectorial quantities
        std::vector<T> qlast, qmid, qnow, qnext, g, dxq, dxq3, Vprime, righthand, dtq;
    public:
        CubicStringProcessor(float sampleRate);

        void updateDerivedConstants();

        void setTandLFromf0Beta();

        void setDissFromDecays();

        void modifyhFromBend();

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
