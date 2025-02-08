/// @file
///	@ingroup 	minexamples
///	@copyright	Copyright 2018 The Min-DevKit Authors. All rights reserved.
///	@license	Use of this source code is governed by the MIT License found in the License.md file.

#include "c74_min.h"
#include "CubicStringProcessor.h"
using namespace c74::min;


class CubicString : public object<CubicString>, public sample_operator <1, 3> {
private:
    CubicStringProcessor<double> processor;
    float sr{0};
public:
    MIN_DESCRIPTION	{"String model with cubic nonlinearity"};
    MIN_TAGS		{"audio"};
    MIN_AUTHOR		{"Thomas Risse"};

    inlet<> input { this, "(signal) excitation"};
    inlet<> input2 {this, "regularisation parameter"};
    outlet<> outputL {this, "(signal) left output", "signal"};
    outlet<> outputR {this, "(signal) right output", "signal"};
    outlet<> outputEps {this, "(signal) epsilon", "signal"};

    attribute<number, threadsafe::no, limit::clamp> lambda0 { this, "regularisation parameter",0,
        range { 0, 10000 },
        setter { MIN_FUNCTION {
            processor.lambda0 = args[0];
            return args;
        }}
    };

    attribute<number, threadsafe::no, limit::clamp> alpha { this, "stability condition setting",0.9,
        range { 0.1, 1 },
        setter { MIN_FUNCTION {
            processor.alpha = args[0];
            return args;
        }}
    };

    attribute<number, threadsafe::no, limit::clamp> posex { this, "excitation position",0.3,
        range { 0, 1 },
        setter { MIN_FUNCTION {
            processor.posex = args[0];
            return args;
        }}
    };

    attribute<number, threadsafe::no, limit::clamp> poslistL { this, "left listening position",0.3,
        range { 0, 1 },
        setter { MIN_FUNCTION {
            processor.poslistL = args[0];
            return args;
        }}
    };

    attribute<number, threadsafe::no, limit::clamp> poslistR { this, "right listening position",0.3,
        range { 0, 1 },
        setter { MIN_FUNCTION {
            processor.poslistL = args[0];
            return args;
        }}
    };

    attribute<number, threadsafe::no, limit::clamp> f0 { this, "fundamental frequency",200,
        range { 1, 10000},
        setter { MIN_FUNCTION {
            processor.f0 = args[0];
            return args;
        }}
    };

    attribute<number, threadsafe::no, limit::clamp> beta { this, "beta",1e-4,
        range { 1e-12, 1},
        setter { MIN_FUNCTION {
            processor.beta = args[0];
            return args;
        }}
    };

    attribute<number, threadsafe::no, limit::clamp> t60_0 { this, "first decay time",4,
        range { 0, 100 },
        setter { MIN_FUNCTION {
            processor.t60_0 = args[0];
            return args;
        }}
    };
    
    attribute<number, threadsafe::no, limit::clamp> fd0 { this, "first decay frequency",100,
        range { 0, 1000 },
        setter { MIN_FUNCTION {
            processor.fd0 = args[0];
            return args;
        }}
    };
    
    attribute<number, threadsafe::no, limit::clamp> t60_1 { this, "second decay time",2,
        range { 0, 100},
        setter { MIN_FUNCTION {
            processor.t60_1 = args[0];
            return args;
        }}
    };
    
    attribute<number, threadsafe::no, limit::clamp> fd1 { this, "second decay frequency",1000,
        range { 100, 10000 },
        setter { MIN_FUNCTION {
            processor.fd1 = args[0];
            return args;
        }}
    };

    // Recompute updated coefficients
    message<> bang { this, "bang", "Re-update with new physical coefficients.",
        MIN_FUNCTION {
            if (sr!=0){
                cout << "sr =" << sr << endl;
                processor.reinitDsp(sr);
                cout << "N = " << processor.getN() << endl;
            }
            return args;
        }
    };
    
    message<> dspsetup { this, "dspsetup",
        MIN_FUNCTION {
            //number samplerate = args[0];
            //int vectorsize = args[1];
            sr = args[0];
            cout << "sr =" << sr << endl;
            processor.reinitDsp(sr);
            cout << "N = " << processor.getN() << endl;
            return {};
        }
    };
    
    CubicString(const atom& args = {}) : processor(44100){
    }

    samples<3> operator()(sample x) {
        auto [outL, outR, epsilon] = processor.process(float(x));
        return {{outL, outR, epsilon}};
    }
};


MIN_EXTERNAL(CubicString);
