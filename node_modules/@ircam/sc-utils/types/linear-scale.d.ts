/**
 * Create a linear scale function.
 *
 * @param {number} inputStart - Start value of input range
 * @param {number} inputEnd - End value of input range
 * @param {number} outputStart - Start value of output range
 * @param {number} outputEnd - End value of output range
 * @param {boolean} [clip=false] - Clip output to output range, default to `false`
 * @return {Function}
 *
 * @example
 * import { scale } from '@ircam/sc-utils';
 * const myScale = scale(0, 1, 50, 100);
 * myScale(0.5);
 * // > 75
 */
export function linearScale(inputStart: number, inputEnd: number, outputStart: number, outputEnd: number, clip?: boolean): Function;
//# sourceMappingURL=linear-scale.d.ts.map