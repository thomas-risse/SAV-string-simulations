/**
 * Check if the value is a number, including Infinity.
 * If you want to excluse Infinity, check the native Number.isFinite function
 * @param {*} val - Value to check
 * @return {boolean}
 * @example
 * import { isNumber } from '@ircam/sc-utils';
 * isNumber(42);
 * // > true
 */
export function isNumber(val) {
  return Number(val) === val;
}
