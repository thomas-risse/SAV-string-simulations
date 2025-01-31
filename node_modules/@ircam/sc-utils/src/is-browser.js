// https://stackoverflow.com/questions/17575790/environment-detection-node-js-or-browser

/**
 * Check if the platform is a browser or a node process
 * @return {boolean}
 * @example
 * import { isBrowser } from '@ircam/sc-utils';
 * isBrowser();
 * // > true|false
 */
export const isBrowser = new Function('try {return this===window;}catch(e){ return false;}');
