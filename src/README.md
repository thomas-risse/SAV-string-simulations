# C++ Implementations and Max external

## Structure

**/processor** contains 2 C++ implementations of the algorithm, one using the standard library, the other using Eigen for vector computations. The Eigen version seems more efficient for now, as it probably leverages vector CPU instructions. To do: add a simple performance comparison script.

**/maxmsp** contains the wrapper for the Max/MSP external using the MinDevkit API as well as some test/demo Max patches. To do: provide a bash script for building the external and automatically generating a standard architecture for Max packages (with help patches).