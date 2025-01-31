/**
 * Check if the value is a TypedArray
 * @param {*} val - Value to check
 * @return {boolean}
 * @example
 * import { isTypedArray } from '@ircam/sc-utils';
 * isTypedArray(new Float32Array([1, 2, 3]));
 * // > true
 */
export function isTypedArray(val) {
  return (
       val instanceof Int8Array
    || val instanceof Int16Array
    || val instanceof Int32Array
    || val instanceof Uint8Array
    || val instanceof Uint8ClampedArray
    || val instanceof Uint16Array
    || val instanceof Uint32Array
    || val instanceof Float32Array
    || val instanceof Float64Array
  )
}
