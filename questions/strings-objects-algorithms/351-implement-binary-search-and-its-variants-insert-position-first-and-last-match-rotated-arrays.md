# Implement binary search and its variants: insert position, first and last match, rotated arrays

**Track:** Strings, objects & algorithms  
**Level:** Easy  
**Time:** about 30 minutes  
**Reported at:** Myntra, Flipkart, Media.net, Rippling

**[Solve it in the browser with tests](https://uiround.com/questions/implement-binary-search-and-its-variants-insert-position-first-and-last-match-rotated-arrays)**: free, no account needed.

## Problem

Binary search is the algorithm most often asked in frontend DSA rounds, because its off-by-one errors separate careful coders from the rest. Every function below must run in **O(log n)**: the tests count how many array elements you read (or how many times you call `isBad`), so a linear scan fails.

- **`binarySearch(sorted, target)`**: the index of `target` in an ascending array, or `-1`. With duplicates, any matching index is fine.
- **`lowerBound(sorted, target)`**: the first index whose value is `>= target`, which is where `target` would be inserted to keep the array sorted. Returns `sorted.length` if every value is smaller.
- **`searchRange(sorted, target)`**: `[first, last]` indexes of `target`, or `[-1, -1]`. `[5, 7, 7, 8, 8, 10]` with `8` → `[3, 4]`.
- **`searchRotated(nums, target)`**: `nums` is an ascending array of **distinct** numbers rotated at an unknown point (`[4, 5, 6, 7, 0, 1, 2]`). Return the index of `target`, or `-1`.
- **`intSqrt(n)`**: the integer square root, `Math.floor(Math.sqrt(n))`, for an integer `0 <= n <= 2³¹ − 1`, **without** `Math.sqrt` or `**`.
- **`firstBadVersion(n, isBad)`**: versions `1..n`; once a version is bad, every later one is bad too (like `git bisect`). Return the first bad version, or `-1` if none is bad, calling `isBad` at most about log₂(n) + 1 times.

## Starter code

```js
function binarySearch(sorted, target) {
  // Your code here
}

function lowerBound(sorted, target) {
  // Your code here
}

function searchRange(sorted, target) {
  // Your code here
}

function searchRotated(nums, target) {
  // Your code here
}

function intSqrt(n) {
  // Your code here
}

function firstBadVersion(n, isBad) {
  // Your code here
}
```

## Hints

<details><summary>Hint 1</summary>

Binary search bugs are off-by-one errors. Choose an interval convention first and keep every loop consistent with it.

</details>

<details><summary>Hint 2</summary>

Write one boundary-finding loop: the first index where a condition flips from false to true. Reuse it for insert position, first and last match, square root and first bad version.

</details>

<details><summary>Hint 3</summary>

For rotated arrays, one half is always sorted, so decide which and test whether the target lies in it. Avoid overflow-style mistakes in `intSqrt`, and never scan linearly.

</details>

## Solution

The full answer is free on UIRound: [Implement binary search and its variants: insert position, first and last match, rotated arrays](https://uiround.com/questions/implement-binary-search-and-its-variants-insert-position-first-and-last-match-rotated-arrays). It has a tested solution, a step-by-step explanation, edge cases, follow-up questions with model answers, and the tests to run your own code against.

Found a mistake in this question? [Report it](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml&title=%5BQuestion%20351%5D%20).
