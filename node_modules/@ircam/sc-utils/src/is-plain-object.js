import isPlainObj from 'is-plain-obj';

/**
 * Check if the value is a Plain Old Javascript Object (POJO)
 * @param {*} val - Value to check
 * @return {boolean}
 * @example
 * import { isPlainObject } from '@ircam/sc-utils';
 * isPlainObject({ a: 1 });
 * // > true
 */
export function isPlainObject(val) {
  return isPlainObj(val);
}
