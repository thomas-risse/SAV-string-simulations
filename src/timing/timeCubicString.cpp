#include <chrono>
#include <iostream>
#include <fstream> 
#include<iomanip>

#include "CubicStringProcessor.h"
#include "CubicStringProcessorEigen.h"

using namespace std::chrono;

int main(int argc, char const *argv[])
{
    // Result file creation
    std::ofstream resultFile;
    resultFile.open("../timeCubicString.txt");

    // Samplerate
    float sr = 96000;
    float simDuration = 10;
    // Parameters
    float alpha = 0.9;
    float beta = 1e-4;
    float t60_0 = 12;
    float t60_1 = 6;
    std::array<float, 5> f0s {20, 50, 100, 200, 500};

    CubicStringProcessor<double> csp(sr);
    csp.alpha = alpha;
    csp.beta = beta;
    csp.t60_0 = t60_0;
    csp.t60_1 = t60_1;
    csp.reinitDsp(sr);

    CubicStringProcessorEigen<double> cspEigen(sr);
    cspEigen.alpha = alpha;
    cspEigen.beta = beta;
    cspEigen.t60_0 = t60_0;
    cspEigen.t60_1 = t60_1;
    cspEigen.reinitDsp(sr);

    CubicStringProcessor<float> cspFloat(sr);
    cspFloat.alpha = alpha;
    cspFloat.beta = beta;
    cspFloat.t60_0 = t60_0;
    cspFloat.t60_1 = t60_1;
    cspFloat.reinitDsp(sr);

    CubicStringProcessorEigen<float> cspEigenFloat(sr);
    cspEigenFloat.alpha = alpha;
    cspEigenFloat.beta = beta;
    cspEigenFloat.t60_0 = t60_0;
    cspEigenFloat.t60_1 = t60_1;
    cspEigenFloat.reinitDsp(sr);

    int width = 14;
    resultFile << std::setw(width) << "f0" <<std::setw(width) << "N"<< std::setw(width) << "Double" << std::setw(width) << "DoubleEigen" <<std::setw(width) << "Float" << std::setw(width) << "FloatEigen" << std::endl;

    auto start = high_resolution_clock::now();
    auto stop = high_resolution_clock::now();
    float rtRatio = (duration_cast<microseconds>(stop - start)).count() * 1e-6;

    std::cout.precision(2);
    resultFile.precision(2);
    for (int i = 0; i < f0s.size(); i++) {
        csp.f0 = f0s[i];
        csp.reinitDsp(sr);
        cspEigen.f0 = f0s[i];
        cspEigen.reinitDsp(sr);
        cspFloat.f0 = f0s[i];
        cspFloat.reinitDsp(sr);
        cspEigenFloat.f0 = f0s[i];
        cspEigenFloat.reinitDsp(sr);
        std::cout << "f0 = " << f0s[i] <<", N = " << csp.getN() << std::endl;
        resultFile << std::setw(width) << f0s[i] << std::setw(width) << csp.getN();

        // Time CubicStringProcessor
        start = high_resolution_clock::now();
        for (int i = 0; i < sr*simDuration; i++) {
            csp.process(0.1, 0, 0.9, 0.3, 0.3);
        }
        stop = high_resolution_clock::now();
        rtRatio = (duration_cast<microseconds>(stop - start)).count() * 1e-6 / simDuration;

        std::cout << "Time CubicStringProcessor: " << rtRatio * 100 << "%" << std::endl;
        resultFile << std::setw(width) << rtRatio * 100;

        // Time CubicStringProcessorEigen
        start = high_resolution_clock::now();
        for (int i = 0; i < sr*simDuration; i++) {
            cspEigen.process(0.1, 0, 0.9, 0.3, 0.3);
        }
        stop = high_resolution_clock::now();
        rtRatio = (duration_cast<microseconds>(stop - start)).count() * 1e-6 / simDuration;

        std::cout << "Time CubicStringProcessor Eigen: " << rtRatio * 100 << "%" << std::endl;
        resultFile << std::setw(width) << rtRatio * 100;

        // Time CubicStringProcessor float
        start = high_resolution_clock::now();
        for (int i = 0; i < sr*simDuration; i++) {
            cspFloat.process(0.1, 0, 0.9, 0.3, 0.3);
        }
        stop = high_resolution_clock::now();
        rtRatio = (duration_cast<microseconds>(stop - start)).count() * 1e-6 / simDuration;

        std::cout << "Time CubicStringProcessor Float: " << rtRatio * 100 << "%" << std::endl;
        resultFile << std::setw(width) << rtRatio * 100;

        // Time CubicStringProcessorEigen
        start = high_resolution_clock::now();
        for (int i = 0; i < sr*simDuration; i++) {
            cspEigenFloat.process(0.1, 0, 0.9, 0.3, 0.3);
        }
        stop = high_resolution_clock::now();
        rtRatio = (duration_cast<microseconds>(stop - start)).count() * 1e-6 / simDuration;

        std::cout << "Time CubicStringProcessor Eigen Float: " << rtRatio * 100 << "%" << std::endl;
        resultFile << std::setw(width) << rtRatio * 100 << std::endl;
    }
    

    return 0;
}
