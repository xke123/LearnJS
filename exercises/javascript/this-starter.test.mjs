import test from 'node:test';
import assert from 'node:assert/strict';
import { makeCounter } from './this-starter.mjs';

test('通过对象调用方法时正确维护状态', () => {
  const counter = makeCounter(2);
  assert.equal(counter.increment(), 3);
  assert.equal(counter.increment(), 4);
});
