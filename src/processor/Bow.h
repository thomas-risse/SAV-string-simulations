#include <Eigen/Dense>
#include <cmath>

enum BOWCARACTERISTIC{
  SMOOTHEDCOULOMB,
  SMOOTHEDSTRIBECK,
  SMOOTHEDMATUSIAK
};

class Bow {
  private:
    float mu_s{1}, mu_c{0.5}, mu_v{0}; // Static, dynamic, viscous friction coeffs
    float v_s{0.1}, v_c{0.02}; // Stribeck velocity and Coulomb smoothing velocity
    float a{100}; // Dimensionless smoothing parameter

  public:
    BOWCARACTERISTIC mode;

    Bow(BOWCARACTERISTIC mode){this->mode = mode;};

    // friction caracteristic phi(v - vbow)
    template <class T>
    T phi(T vrel) {
      switch (mode){
        case SMOOTHEDCOULOMB:
          return mu_c * 2 / M_PI * atan(vrel / v_c); // No oscillations ?
        case SMOOTHEDSTRIBECK:
          return (mu_s - mu_c) * sqrt(2*a)*vrel*exp(-a*vrel*vrel + 0.5);
        case SMOOTHEDMATUSIAK:
          return mu_c * 2 / M_PI * atan(vrel / v_c) // Smoothed Coulomb
            + (mu_s - mu_c) * sqrt(2 * a) * vrel * exp(-a*vrel*vrel + 0.5) // Smoothed Stribeck
            + mu_v * vrel; // Viscous
      }
    }
};
