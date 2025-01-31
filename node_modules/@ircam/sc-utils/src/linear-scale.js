/**
 * Create a linear scale function.
 *
 * @param {number} inputStart - Start value of input range
 * @param {number} inputEnd - End value of input range
 * @param {number} outputStart - Start value of output range
 * @param {number} outputEnd - End value of output range
 * @param {boolean} [clip=false] - Clip output to output range, default to `false`
 * @return {Function}
 * 
 * @example
 * import { scale } from '@ircam/sc-utils';
 * const myScale = scale(0, 1, 50, 100);
 * myScale(0.5);
 * // > 75
 */
export function linearScale(inputStart, inputEnd, outputStart, outputEnd, clip = false) {
  const a = (outputEnd - outputStart) / (inputEnd - inputStart);
  const b = outputStart - a * inputStart;

  if (!clip) {
    return x => a * x + b;
  } else {
    const upperBound = Math.max(outputStart, outputEnd);
    const lowerBound = Math.min(outputStart, outputEnd);

    return x => {
      const y = a * x + b;
      return Math.max(lowerBound, Math.min(upperBound, y));
    };
  }
}
