import { isTypedArray } from './is-typed-array.js';

/**
 * Check if the value is a sequence (`Array` or `TypedArray`) of finite numbers
 * @param {any} val - Value to check
 * @return {boolean}
 * @example
 * import { isSequence } from '@ircam/sc-utils';
 * isSequence([1, 2, 3]);
 * // > true
 */
export function isSequence(val) {
  if (!isTypedArray(val) && !Array.isArray(val)) {
    return false;
  }

  for (let i = 0; i < val.length; i++) {
    if (!Number.isFinite(val[i])) {
      return false;
    }
  }

  return true;
}
