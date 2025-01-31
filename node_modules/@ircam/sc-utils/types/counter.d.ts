/**
 * Create a counter function.
 *
 * @param {number} [from=0] - Start of the counter, included
 * @param {number} [to=Number.MAX_SAFE_INTEGER] - End of the counter, included
 * @param {number} [step=1] - Increment / decrement step, if 0 returns `from` forever
 * @returns {Function}
 *
 * import { counter } from '@ircam/sc-utils';
 * const myCounter = counter(0.1, 0.3, 0.1);
 * counter(); // 0.1
 * counter(); // 0.2
 * counter(); // 0.3
 * counter(); // 0.1
 * // ...
 */
export function counter(from?: number, to?: number, step?: number): Function;
//# sourceMappingURL=counter.d.ts.map