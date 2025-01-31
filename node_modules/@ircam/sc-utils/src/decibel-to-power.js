/**
 * Convert a dB into power gain
 *
 * @param {number} val - Value to convert
 * @return {number}
 * @example
 * import { decibelToPower } from '@ircam/sc-utils';
 * decibelToPower(0);
 * // > 1
 */
export function decibelToPower(val) {
  return Math.exp(0.23025850929940458 * val); // pow(10, val / 10)
}

