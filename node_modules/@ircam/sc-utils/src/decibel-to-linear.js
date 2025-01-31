import { dbtoa } from './dbtoa.js';

/**
 * Convert a dB into linear gain (i.e. gain)
 *
 * _Alias:_ `dbtoa`
 *
 * @param {number} val - Value to convert
 * @return {number}
 * @example
 * import { decibelToLinear } from '@ircam/sc-utils';
 * decibelToLinear(0);
 * // > 1
 */
export function decibelToLinear(val) {
  return dbtoa(val); // pow(10, val / 20)
}

