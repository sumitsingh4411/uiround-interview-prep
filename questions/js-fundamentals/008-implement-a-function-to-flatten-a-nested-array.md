# Implement a function to flatten a nested array

**Track:** JavaScript fundamentals  
**Level:** Easy  
**Time:** about 15 minutes  

**[Solve it in the browser with tests](https://uiround.com/questions/implement-a-function-to-flatten-a-nested-array)**: free, no account needed.

## Problem

Implement `flatten(array, depth = Infinity)`. It returns a new array with nested arrays flattened into it, up to `depth` levels, like `Array.prototype.flat()`. Do not use `flat()` itself.

```js
flatten([1, [2, [3, [4]]], 5]); // [1, 2, 3, 4, 5]
flatten([1, [2, [3, [4]]], 5], 1); // [1, 2, [3, [4]], 5]
```

**Requirements**

- Without `depth`, flatten completely.
- `depth = 0` returns a shallow copy.
- Do not change the input.
- Skip holes in sparse arrays, like `flat()` does.
- Only arrays are flattened: strings and array-like objects stay as they are.

## Starter code

```js
function flatten(array, depth = Infinity) {
  // Your code here
}
```

## Hints

<details><summary>Hint 1</summary>

Picture the array as a tree. What tells you when to stop descending, and how does the depth limit affect that?

</details>

<details><summary>Hint 2</summary>

Recurse depth-first with a remaining-depth budget, pushing into one shared result array; a nested array costs one level, and at zero it is pushed as is.

</details>

<details><summary>Hint 3</summary>

Use `Array.isArray`, not `typeof`, so strings and array-likes stay intact. Skip holes, and `depth = 0` must still return a copy, not the input.

</details>

## Solution

The full answer is free on UIRound: [Implement a function to flatten a nested array](https://uiround.com/questions/implement-a-function-to-flatten-a-nested-array). It has a tested solution, a step-by-step explanation, edge cases, follow-up questions with model answers, and the tests to run your own code against.

Found a mistake in this question? [Report it](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml&title=%5BQuestion%208%5D%20).
