/**
 * Convert a MIDI note to frequency
 * @param {number} midiNote - MIDI Note to convert
 * @return {number}
 * @example
 * import { mtof } from '@ircam/sc-utils';
 * const freq = mtof(69);
 * // > 440
 */
export function mtof(midiNote) {
  // https://www.music.mcgill.ca/~gary/307/week1/node28.html
  return 440 * Math.pow(2, (midiNote - 69) / 12);
}
