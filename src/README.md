# C++ Implementations and Max external

## Structure

**/processor** contains 2 C++ implementations of the algorithm, one using the standard library, the other using Eigen for vector computations. The Eigen version seems more efficient for now, as it probably leverages vector CPU instructions. To do: add a simple performance comparison script.

**/maxmsp** contains the wrapper for the Max/MSP external using the MinDevkit API as well as some test/demo Max patches. To do: provide a bash script for building the external and automatically generating a standard architecture for Max packages (with help patches).

**/timing** contains a script for timing audio processors.

## Real-time ratios

Execution of the timing script on a MacBook Pro M3 yields the following results for real-time ratios of the two processors, using double or single precision floating points numbers. Results are shown for a few standard audio samplerates.

**sr = 44100 Hz**

        f0     N         Double    DoubleEigen          Float     FloatEigen
        20   360            13%           7.1%            10%           3.6%
        50   215           7.5%           4.3%           6.1%           2.2%
       100   140           4.7%           2.8%           3.9%           1.5%
       200    84           2.7%           1.6%           2.3%          0.98%
       500    37           1.1%           0.8%             1%          0.57%

**sr = 96000 Hz**

       f0     N         Double    DoubleEigen          Float     FloatEigen
       20   543            43%            24%            34%            12%
       50   334            26%            15%            21%           7.4%
      100   227            17%           9.7%            14%             5%
      200   148            11%           6.3%             9%           3.5%
      500    75           5.2%           3.4%           4.5%           2.1%

**sr = 192000 Hz**

        f0     N         Double    DoubleEigen          Float     FloatEigen
        20   774           120%            68%            98%            36%
        50   484            76%            44%            61%            22%
       100   334            52%            30%            43%            15%
       200   227            35%            20%            28%            10%
       500   127            19%            11%            16%           6.4%