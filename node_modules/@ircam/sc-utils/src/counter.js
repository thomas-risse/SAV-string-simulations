import NP from 'number-precision';

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
export function counter(from = 0, to = Number.MAX_SAFE_INTEGER, step = 1) {
  if (step === 0) {
    // just return `from` forever
    function* iter() { while(true) yield from }
    const sequence = iter();

    return () => sequence.next().value;
  }

  const start = step > 0 ? Math.min(from, to) : Math.max(from, to);
  const end = step > 0 ? Math.max(from, to) : Math.min(from, to);
  // note that Number.MAX_SAFE_INTEGER will wrap properly
  // https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number/MAX_SAFE_INTEGER
  function* iter() {
    for (let i = start; true; i = NP.plus(i, step)) {
      if ((step > 0 && i > end) || (step < 0 && i < end)) {
        i = start
      }

      yield i;
    }
  }
  const sequence = iter();

  return () => sequence.next().value;
}
