# Implement memoize() with custom cache keys

**Track:** JavaScript utilities & FP  
**Level:** Medium  
**Time:** about 35 minutes  

**[Solve it in the browser with tests](https://uiround.com/questions/implement-memoize-with-custom-cache-keys)**: free, no account needed.

## Problem

Implement `memoize(fn, resolver)`. It returns a function that caches the results of `fn`, so calling it again with the same key returns the cached result without calling `fn`.

The cache key is:

- `resolver(...args)` when a `resolver` is given (called with the same `this`),
- otherwise the argument itself when there is exactly one argument,
- otherwise `JSON.stringify(args)`.

The memoized function exposes its cache as `memoized.cache` (a `Map`), so callers can clear or inspect it.

```js
const slowSquare = (n) => { /* expensive */ return n * n; };
const square = memoize(slowSquare);
square(9); // computed
square(9); // from the cache

const getUser = memoize(fetchUserProfile, (user) => user.id);
getUser({ id: 1, name: "A" });
getUser({ id: 1, name: "A (new object)" }); // cache hit: same id
```

**Requirements**

- Cache results that are `undefined`, `null`, `0` or `false` too.
- Objects passed as the only argument are compared by reference by default.
- Forward `this` to both `fn` and `resolver`.

## Starter code

```js
function memoize(fn, resolver) {
  // Your code here
}
```

## Hints

<details><summary>Hint 1</summary>

Before caching, decide what identifies a call. A single argument, several arguments and an object each need a different answer.

</details>

<details><summary>Hint 2</summary>

Derive a key per call (resolver, the lone argument, or a joined form of all args) and look it up in a `Map`, calling `fn` only on a miss.

</details>

<details><summary>Hint 3</summary>

Check with `has`, not `get`, so cached `undefined`, `null`, `0` and `false` count as hits. Forward `this` to both resolver and `fn`, and expose the `Map` as `.cache`.

</details>

## Solution

The full answer is free on UIRound: [Implement memoize() with custom cache keys](https://uiround.com/questions/implement-memoize-with-custom-cache-keys). It has a tested solution, a step-by-step explanation, edge cases, follow-up questions with model answers, and the tests to run your own code against.

Found a mistake in this question? [Report it](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml&title=%5BQuestion%2031%5D%20).
