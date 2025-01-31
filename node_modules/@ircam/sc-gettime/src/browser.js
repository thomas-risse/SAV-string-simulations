// see: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/now
// see: https://developer.mozilla.org/en-US/docs/Web/API/Performance/now
const usePerf = (globalThis.performance && globalThis.performance.now);
const start = usePerf ? performance.now() : Date.now();

if (!globalThis.crossOriginIsolated) {
  // console.info('> self.crossOriginIsolated', globalThis.crossOriginIsolated || false);
  console.warn(`[@ircam/sc-gettime] Your page is not Cross Origin Isolated. The accuracy of the clock may be reduced by the User-Agent to prevent finger-printing
(see: https://web.dev/coop-coep/ for more informations)`);
}

export function getTime() {
  if (usePerf) {
    const now = performance.now();
    const delta = now - start;
    return delta * 1e-3;
  } else {
    const now = Date.now();
    const delta = now - start;
    return delta * 1e-3;
  }
}
