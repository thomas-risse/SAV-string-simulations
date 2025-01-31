/**
 * Create a scale function that returns a normalized position in the transfert
 * table according to the given value.
 *
 * @param {number[]} transfertTable - Sequence of finite numbers to use as lookup table
 * @return {function}
 *
 * @example
 * import { tableToNormalized } from '@ircam/sc-utils'
 * const scale = tableToNormalized([1, 2, 4])
 * scale(1);    // 0
 * scale(1.5);  // 0.25
 * scale(2);    // 0.5
 * scale(3);    // 0.75
 * scale(4);    // 1
 */
export function tableToNormalizedScale(transfertTable: number[]): Function;
//# sourceMappingURL=table-to-normalized-scale.d.ts.map