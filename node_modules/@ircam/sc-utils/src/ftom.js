/**
 * Convert a frequency in Hz to a MIDI note
 *
 * @param {number} freq - Frequency to convert
 * @return {number}
 * @example
 * import { ftom } from '@ircam/sc-utils';
 * const freq = ftom(440);
 * // > 69
 */
export function ftom(freq) {
  // https://www.music.mcgill.ca/~gary/307/week1/node28.html
  return 12 * (Math.log(freq / 220) / Math.log(2)) + 57;
}

