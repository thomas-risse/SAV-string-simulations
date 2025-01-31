import { isBrowser } from './is-browser.js';

/**
 * Check if the device supports touch events
 * @return {boolean}
 * @example
 * import { isTouchDevice } from '@ircam/sc-utils';
 * isTouchDevice();
 * // > true|false
 */
export function isTouchDevice() {
  if (!isBrowser()) {
    return false;
  }

  return (('ontouchstart' in window) ||
     (navigator.maxTouchPoints > 0) ||
     (navigator.msMaxTouchPoints > 0));
}
