/**
 * Create an exponential scale function.
 *
 * @param {number} inputStart - Start value of input range
 * @param {number} inputEnd - End value of input range
 * @param {number} outputStart - Start value of output range
 * @param {number} outputEnd - End value of output range
 * @param {number} [base=2] - Base value for exponential scaling, default to `2`
 * @param {boolean} [clip=false] - Clip output to output range, default to `false`
 *
 * @example
 * const { exponentialScale } = utils;
 * const midiToFreq = exponentialScale(69, 81, 440, 880);
 * midiToFreq(57);
 * // > 220
 */
export function exponentialScale(inputStart: number, inputEnd: number, outputStart: number, outputEnd: number, base?: number, clip?: boolean): (value: any) => number;
//# sourceMappingURL=exponential-scale.d.ts.map