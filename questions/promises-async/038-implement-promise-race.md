# Implement Promise.race()

**Track:** Promises & async  
**Level:** Medium  
**Time:** about 35 minutes  

**[Solve it in the browser with tests](https://uiround.com/questions/implement-promise-race)**: free, no account needed.

## Problem

Implement `promiseRace(iterable)` without using `Promise.race`. It returns a promise that settles the same way as the **first** item to settle: it fulfils with that value or rejects with that reason.

```js
const result = await promiseRace([
  fetch("/api/search?q=js"),
  new Promise((_, reject) => setTimeout(() => reject(new Error("Timed out")), 3000)),
]);
```

**Requirements**

- Fulfilment and rejection both count: whichever comes first wins.
- Plain values count as already settled, so `promiseRace([slowPromise, 42])` fulfils with `42`.
- With equal timing, the earlier item in the input wins.
- An empty input returns a promise that **never settles**, like the built-in.
- Accept any iterable.

## Starter code

```js
function promiseRace(iterable) {
  // Your code here
}
```

## Hints

<details><summary>Hint 1</summary>

Which part of a promise's own behaviour already gives you 'only the first outcome counts'?

</details>

<details><summary>Hint 2</summary>

Subscribe to every item and forward its fulfilment and rejection straight to the outer `resolve` and `reject`.

</details>

<details><summary>Hint 3</summary>

Plain values count as settled, so wrap with `Promise.resolve`. With an empty input, nothing ever calls resolve or reject, so the promise stays pending forever, like the built-in.

</details>

## Solution

The full answer is free on UIRound: [Implement Promise.race()](https://uiround.com/questions/implement-promise-race). It has a tested solution, a step-by-step explanation, edge cases, follow-up questions with model answers, and the tests to run your own code against.

Found a mistake in this question? [Report it](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml&title=%5BQuestion%2038%5D%20).
