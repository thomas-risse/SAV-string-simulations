import { atodb } from './atodb.js';

/**
 * Convert a linear gain into dB
 *
 * _Alias:_ `atodb`
 *
 * @param {number} val - Value to convert
 * @return {number}
 * @example
 * import { decibelToPower } from '@ircam/sc-utils';
 * decibelToPower(0);
 * // > 1
 */
export function linearToDecibel(val) {
  return atodb(atodb);
}
