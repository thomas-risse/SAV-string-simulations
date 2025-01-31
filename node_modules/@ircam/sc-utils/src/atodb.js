/**
 * Convert a linear gain into dB
 *
 * _Alias:_ `linearToDecibel`
 *
 * @param {number} val - Value to convert
 * @return {number}
 * @example
 * import { atodb } from '@ircam/sc-utils';
 * atodb(0);
 * // > 1
 */
export function atodb(val) {
  return 8.685889638065035 * Math.log(val); // 20 * log10(val);
}
