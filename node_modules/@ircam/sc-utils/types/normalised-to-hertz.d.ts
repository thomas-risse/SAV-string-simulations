/**
 * Convert a normalised frequency, in [0, 1], to a frequency in Hertz.
 *
 * Normalised frequency of 1 is half the sample-rate (Nyquist frequency).
 *
 * @param {number} frequencyNormalised - Normalised frequency to convert
 * @param {number} sampleRate - Twice the Nyquist frequency
 * @return {number}
 * @example
 * import { normalisedToHertz } from '@ircam/sc-utils';
 * normalisedToHertz(0.5, {sampleRate: 48000});
 * // > 12000
 */
export function normalisedToHertz(frequencyNormalised: number, { sampleRate, }?: number): number;
//# sourceMappingURL=normalised-to-hertz.d.ts.map