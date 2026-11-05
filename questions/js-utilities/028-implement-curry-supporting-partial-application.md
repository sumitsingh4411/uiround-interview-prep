# Implement curry() supporting partial application

**Track:** JavaScript utilities & FP  
**Level:** Medium  
**Time:** about 35 minutes  
**Reported at:** Flipkart, Rippling, Uber, Intuit, Amazon, Zeta

**[Solve it in the browser with tests](https://uiround.com/questions/implement-curry-supporting-partial-application)**: free, no account needed.

## Problem

Implement `curry(fn)`. It returns a curried version of `fn` that keeps collecting arguments until it has at least `fn.length` of them, then calls `fn` with all of them. Arguments can arrive one at a time or several at once.

```js
const volume = curry((l, w, h) => l * w * h);
volume(2)(3)(4); // 24
volume(2, 3)(4); // 24
volume(2)(3, 4); // 24
volume(2, 3, 4); // 24

const area = volume(2);
area(3)(4); // 24, and area can be reused
area(5)(1); // 10
```

**Requirements**

- Every partial application returns a new function and can be reused independently.
- Extra arguments beyond `fn.length` are passed through to `fn`.
- Calling with no arguments before enough are collected returns a curried function, it does not call `fn`.
- Keep the `this` value the final call was made with.

## Starter code

```js
function curry(fn) {
  // Your code here
}
```

## Hints

<details><summary>Hint 1</summary>

How would a function know when it has been given enough arguments to run?

</details>

<details><summary>Hint 2</summary>

Compare collected arguments against `fn.length`: if enough, call `fn`; otherwise return a new function closing over the arguments so far.

</details>

<details><summary>Hint 3</summary>

Accept several arguments per call and pass extras through, return a fresh function for each partial application so it can be reused, and keep the `this` of the final call.

</details>

## Solution

The full answer is free on UIRound: [Implement curry() supporting partial application](https://uiround.com/questions/implement-curry-supporting-partial-application). It has a tested solution, a step-by-step explanation, edge cases, follow-up questions with model answers, and the tests to run your own code against.

Found a mistake in this question? [Report it](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml&title=%5BQuestion%2028%5D%20).
