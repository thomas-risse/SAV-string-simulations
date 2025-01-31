import { hrtime } from 'node:process';

const start = hrtime.bigint();

export function getTime() {
  const now = hrtime.bigint();
  const delta = now - start;
  return Number(delta) * 1e-9;
}
