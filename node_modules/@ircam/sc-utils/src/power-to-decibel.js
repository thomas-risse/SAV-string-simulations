/**
 * Convert a linear gain into dB
 * @param {number} val - Value to convert
 * @return {number}
 * @example
 * import { decibelToPower } from '@ircam/sc-utils';
 * decibelToPower(0);
 * // > 1
 */
export function powerToDecibel(val) {
  return 4.3429448190325175 * Math.log(val); // 10 * log10(val)
}

