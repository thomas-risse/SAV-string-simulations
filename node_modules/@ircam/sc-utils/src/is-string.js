/**
 * Check if the value is a string
 * @param {*} val - Value to check
 * @return {boolean}
 * @example
 * import { isString } from '@ircam/sc-utils';
 * isString('test');
 * // > true
 */
export function isString(val) {
  return (typeof val === 'string' || val instanceof String);
}
