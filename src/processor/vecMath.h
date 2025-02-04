#include <vector>

namespace vecMath{

template <class T, class T2>
void setValue(std::vector<T> &vec, T2 value){
    std::fill(vec.begin(), vec.end(), value);
};

template <class T, class T2>
void Dmin(const std::vector<T> &invec, std::vector<T> &outvec, T2 scaling){
    outvec[0] = invec[0] * scaling;
    for (std::size_t i = 1; i < invec.size(); i++) {
        outvec[i] = (invec[i] - invec[i-1]) * scaling;
    }
    outvec[invec.size()] = -invec[invec.size() - 1] * scaling;
};

template <class T, class T2>
void Dplus(const std::vector<T> &invec, std::vector<T> &outvec, T2 scaling){
    for (std::size_t i = 0; i < invec.size()-1; i++) {
        outvec[i] = (invec[i+1] - invec[i]) * scaling;
    }
};

template <class T>
void cube(const std::vector<T> &invec, std::vector<T> &outvec){
    for (std::size_t i= 0; i < invec.size(); i++){
        outvec[i] = invec[i] * invec[i] * invec[i];
    }
}

template <class T, class T2>
void sdiv(const std::vector<T> &invec, std::vector<T> &outvec, T2 denominator){
    for (std::size_t i = 0; i < invec.size(); i++) {
        outvec[i] = invec[i]/denominator;
    }
};

template <class T, class T2>
void add(const std::vector<T> &invec1, const std::vector<T> &invec2, std::vector<T> &outvec, T2 scaling){
    for (std::size_t i= 0; i < invec1.size(); i++){
        outvec[i] = scaling * (invec1[i] + invec2[i]);
    }
}

template <class T, class T2>
void substract(const std::vector<T> &invec1, const std::vector<T> &invec2, std::vector<T> &outvec, T2 scaling){
    for (std::size_t i= 0; i < invec1.size(); i++){
        outvec[i] = scaling * (invec1[i] - invec2[i]);
    }
}

template <class T, class T2>
void norm1(const std::vector<T> &invec, T2 &out){
    out = 0;
    for (std::size_t i= 0; i < invec.size(); i++){
        out += abs(invec[i]);
    }
}

template <class T, class T2>
void dot(const std::vector<T> &invec1, const std::vector<T> &invec2, T2 &out){
    out = 0;
    for (std::size_t i= 0; i < invec1.size(); i++){
        out += invec1[i] * invec2[i];
    }
}

template <typename T> int sgn(T val) {
    return (T(0) < val) - (val < T(0));
}


}