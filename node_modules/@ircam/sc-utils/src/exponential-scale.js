/**
 * Create an exponential scale function.
 *
 * @param {number} inputStart - Start value of input range
 * @param {number} inputEnd - End value of input range
 * @param {number} outputStart - Start value of output range
 * @param {number} outputEnd - End value of output range
 * @param {number} [base=2] - Base value for exponential scaling, default to `2`
 * @param {boolean} [clip=false] - Clip output to output range, default to `false`
 *
 * @example
 * const { exponentialScale } = utils;
 * const midiToFreq = exponentialScale(69, 81, 440, 880);
 * midiToFreq(57);
 * // > 220
 */
export function exponentialScale(inputStart, inputEnd, outputStart, outputEnd, base = 2, clip = false) {
  base = Math.max(0, base);

  const inputRange = inputEnd - inputStart;
  const outputRange = outputEnd - outputStart;
  const inputMin = Math.min(inputStart, inputEnd);
  const inputMax = Math.max(inputStart, inputEnd);
  const logBase = Math.log(base);

  return value => {
    if (inputRange === 0 || outputRange === 0) {
      return value <= inputMin ? outputStart : outputEnd;
    }

    const input = clip ? Math.max(inputMin, Math.min(inputMax, value)) : value;

    return outputStart + outputRange
      * (Math.exp(logBase * (input - inputStart) / inputRange) - 1)
      / (base - 1);
  }
}
