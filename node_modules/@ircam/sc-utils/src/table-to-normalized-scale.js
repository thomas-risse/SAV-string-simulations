import { isSequence } from './is-sequence.js';

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
export function tableToNormalizedScale(transfertTable) {
  if (!isSequence(transfertTable)) {
    throw new TypeError(`Cannot create 'tableToNormalizedScale': given transfert table is not a sequence of finite numbers`);
  }

  if (transfertTable.length < 2) {
    throw new DOMExpection(`Cannot create 'tableToNormalizedScale': given transfert table length must be greater than or equal to 2`, 'IndexSizeError');
  }

  // clamp given value to transfert table boundaries
  const min = transfertTable[0];
  const max = transfertTable[transfertTable.length - 1];

  return value => {
    if (!Number.isFinite(value)) {
      throw new TypeError(`Cannot execute 'tableToNormalizedScale' scale function: given value is non-finite`);
    }

    value = Math.min(max, Math.max(min, value));

    // find normalized position
    let position;

    for (let i = 0; i < transfertTable.length - 1; i++) {
      let prev = transfertTable[i];
      let next = transfertTable[i + 1];

      if (value >= prev && value <= next) {
        const k = (value - prev) / (next - prev);
        position = (i + k) / (transfertTable.length - 1);

        break;
      }
    }

    return position;
  }
}