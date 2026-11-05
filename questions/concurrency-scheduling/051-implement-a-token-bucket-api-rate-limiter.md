# Implement a token-bucket API rate limiter

**Track:** Concurrency & scheduling  
**Level:** Medium  
**Time:** about 35 minutes  
**Reported at:** Google, Myntra

**[Solve it in the browser with tests](https://uiround.com/questions/implement-a-token-bucket-api-rate-limiter)**: free, no account needed.

## Problem

A token bucket holds up to `capacity` tokens and refills continuously at `refillPerSecond` tokens per second. Every request spends tokens; a request without enough tokens must wait. This allows short bursts (up to `capacity`) while keeping the long-run rate at `refillPerSecond`.

Implement `createTokenBucket({ capacity, refillPerSecond, now = Date.now })` returning:

- `tryRemove(count = 1)`: spend `count` tokens and return `true` if there are enough, otherwise return `false` and spend nothing.
- `tokens()`: the current number of tokens (may be fractional).
- `msUntil(count = 1)`: how many milliseconds until `count` tokens will be available (0 if they already are).
- `take(count = 1)`: an async version that waits until the tokens are available, then spends them.

The bucket starts full. `now` is injectable so time can be controlled in tests.

```js
const limiter = createTokenBucket({ capacity: 10, refillPerSecond: 5 });

async function callApi(path) {
  await limiter.take(); // at most 10 at once, then 5 per second
  return fetch(path);
}
```

**Requirements**

- Do not use a timer to refill; compute the refill from the elapsed time when you need it.
- Never exceed `capacity`.
- `tryRemove` with `count > capacity` always returns `false`, and `take` rejects with a `RangeError` for it, because it could never succeed.

## Starter code

```js
function createTokenBucket({ capacity, refillPerSecond, now = Date.now }) {
  // Your code here
}
```

## Hints

<details><summary>Hint 1</summary>

Think about how to know how many tokens exist right now without any timer running.

</details>

<details><summary>Hint 2</summary>

Store a token count and a last-refill timestamp, and on each call add `elapsed * rate`, capped at `capacity`, before checking.

</details>

<details><summary>Hint 3</summary>

`tryRemove` with insufficient tokens spends nothing, a request above `capacity` can never succeed (`false` or `RangeError`), and `take` should wait using `msUntil` then retry.

</details>

## Solution

The full answer is free on UIRound: [Implement a token-bucket API rate limiter](https://uiround.com/questions/implement-a-token-bucket-api-rate-limiter). It has a tested solution, a step-by-step explanation, edge cases, follow-up questions with model answers, and the tests to run your own code against.

Found a mistake in this question? [Report it](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml&title=%5BQuestion%2051%5D%20).
