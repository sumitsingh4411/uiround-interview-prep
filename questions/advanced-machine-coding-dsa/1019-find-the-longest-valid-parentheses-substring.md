# Find the longest valid parentheses substring

**Track:** Advanced machine coding & DSA  
**Level:** Hard  
**Time:** about 50 minutes  
**Reported at:** Sprinklr, Rippling

**[Solve it in the browser with tests](https://uiround.com/questions/find-the-longest-valid-parentheses-substring)**: free, no account needed.

## Problem

A code editor highlights the longest well-formed stretch of brackets in a line, to help people find a missing one. A string is **valid** when it is non-empty, contains only `(` and `)`, and every `(` is closed by a later `)` with proper nesting, like `"(())()"`.

Implement two functions. `s` may contain any characters. Characters other than `(` and `)` are never part of a valid substring.

**`longestValidParentheses(s)`** returns `{ length, start }` for the longest valid substring. When several have the same length, return the one that starts first. When there is none, return `{ length: 0, start: -1 }`.

**`maximalValidRanges(s)`** returns every **maximal** valid substring, as `[start, end]` pairs with `end` exclusive, in order. A valid substring is maximal when no longer valid substring contains it. These never overlap.

The tests use strings of a million characters, so the solution must be linear.

```js
longestValidParentheses(")()())"); // { length: 4, start: 1 }
longestValidParentheses("(()(()"); // { length: 2, start: 1 }
longestValidParentheses("(a)"); // { length: 0, start: -1 }
maximalValidRanges(")()())()"); // [[1, 5], [6, 8]]
```

## Starter code

```js
function longestValidParentheses(s) {
  // Your code here
}

function maximalValidRanges(s) {
  // Your code here
}
```

## Hints

<details><summary>Hint 1</summary>

Checking every substring is cubic, and even the quadratic version is too slow for a million characters. Aim for a single pass with a stack of indexes.

</details>

<details><summary>Hint 2</summary>

Push the index of each open bracket. A close bracket that finds one on the stack matches it: mark both positions. Afterwards, every maximal run of marked positions is a maximal valid substring.

</details>

<details><summary>Hint 3</summary>

A character that is not a bracket can never be inside a valid substring, and an open bracket before it can never match a close bracket after it. Clear the stack when you see one.

</details>

## Solution

The full answer is free on UIRound: [Find the longest valid parentheses substring](https://uiround.com/questions/find-the-longest-valid-parentheses-substring). It has a tested solution, a step-by-step explanation, edge cases, follow-up questions with model answers, and the tests to run your own code against.

Found a mistake in this question? [Report it](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml&title=%5BQuestion%201019%5D%20).
