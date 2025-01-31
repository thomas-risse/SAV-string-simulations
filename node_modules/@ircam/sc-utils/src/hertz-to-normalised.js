/**
 * Convert a frequency in Hertz to a normalised one in [0, 1].
 *
 * Normalised frequency of 1 is half the sample-rate (Nyquist frequency).
 *
 * @param {number} frequencyHertz - Frequency in Hertz to convert
 * @param {number} sampleRate - Twice the Nyquist frequency
 * @return {number}
 * @example
 * import { hertzToNormalised } from '@ircam/sc-utils';
 * hertzToNormalised(12000, {sampleRate: 48000});
 * // > 0.5
 */
export function hertzToNormalised(frequencyHertz, {
  sampleRate = 2, // normalised
} = {}) {
  return frequencyHertz * 2 / sampleRate;
}
