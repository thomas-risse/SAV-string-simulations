import { getTime as isomorphicGetTime } from '@ircam/sc-gettime';

/**
 * Provide a unified clock in seconds accross platforms, with an origin defined by
 * the start of the process.
 * @return {number}
 * @example
 * import { getTime } from '@ircam/sc-utils';
 *
 * setInterval(() => {
 *   const now = getTime();
 *   // ...
 * }, 1000);
 */
export function getTime() { return isomorphicGetTime(); }
