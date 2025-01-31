import { isSequence } from './is-sequence.js';

/**
 * Create a scale function that returns a linearly interpolated value from the given 
 * transfert table according to the given normalized position.
 *
 * @param {number[]} transfertTable - Sequence of finite numbers to use as lookup table
 * @return {function}
 *
 * @example
 * import { normalizedToTableScale } from '@ircam/sc-utils'
 * const scale = normalizedToTableScale([1, 2, 4])
 * scale(0);    // 1
 * scale(0.25); // 1.5
 * scale(0.5);  // 2
 * scale(0.75); // 3
 * scale(1);    // 4
 */
export function normalizedToTableScale(transfertTable) {
  if (!isSequence(transfertTable)) {
    throw new TypeError(`Cannot create 'normalizedToTableScale': given transfert table is not a sequence of finite numbers`);
  }

  if (transfertTable.length < 2) {
    throw new DOMExpection(`Cannot create 'normalizedToTableScale': given transfert table length must be greater than or equal to 2`, 'IndexSizeError');
  }

  return value => {
    if (!Number.isFinite(value)) {
      throw new TypeError(`Cannot execute 'normalizedToTableScale' scale function: given value is non-finite`);
    }

    value = Math.min(1, Math.max(0, value));
    const index = value * (transfertTable.length - 1);

    const prev = transfertTable[Math.floor(index)];
    const next = transfertTable[Math.ceil(index)];
    const k = index - Math.floor(index);

    return prev + (next - prev) * k;
  }
}
