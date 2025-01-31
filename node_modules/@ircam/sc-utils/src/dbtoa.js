/**
 * Convert a dB into linear gain
 *
 * _Alias:_ `decibelToLinear`
 *
 * @param {number} val - Value to convert
 * @return {number}
 * @example
 * import { dbtoa } from '@ircam/sc-utils';
 * dbtoa(0);
 * // > 1
 */
export function dbtoa(val) {
  return Math.exp(0.11512925464970229 * val); // pow(10, val / 20)
}
