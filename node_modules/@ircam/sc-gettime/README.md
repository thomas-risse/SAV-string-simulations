# `@ircam/sc-gettime`

Provide a unified clock in seconds accross platforms, with an origin defined by
the start of the process.

## Install

```
npm install --save @ircam/sc-gettime
```

## Usage

The interface is the same wether you are on a node process

```js
import { getTime } from '@ircam/sc-gettime';

setInterval(() => {
  console.log(getTime());
}, 1000);
```

## Notes

- In Node.js, use `process.hrtime.bigint()` 
see: https://nodejs.org/api/process.html#processhrtimebigint 

- In browsers, use `performance.now()` if available, and falls back on `Date.now()` 
see: https://developer.mozilla.org/en-US/docs/Web/API/Performance/now 
see: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/now 

## License

BSD-3-Clause

