# Compute trapped rain water with two pointers

**Track:** Algorithms & data structures  
**Level:** Medium  
**Time:** about 35 minutes  
**Reported at:** Cleartrip, Myntra, Media.net

**[Solve it in the browser with tests](https://uiround.com/questions/compute-trapped-rain-water-with-two-pointers)**: free, no account needed.

## Problem

An elevation map is a row of bars of width `1`. After it rains, water collects in the dips between taller bars. `heights[i]` is the height of bar `i`.

Write two functions:

**`trap(heights)`** returns the total units of water held by the map.

**`waterLevels(heights)`** returns a new array of the same length where entry `i` is the depth of water standing above bar `i`. Its entries add up to `trap(heights)`.

Rules:

1. Water above bar `i` reaches the **lower** of the tallest bar on its left and the tallest bar on its right, minus the bar's own height, and never goes below `0`. Water flows off both ends of the map.
2. Maps with fewer than three bars hold no water. `[]` gives `0` and `[]`.
3. Heights can be fractional. If `heights` is not an array of non-negative finite numbers, throw a `RangeError`.
4. Maps can have 200,000 bars. Rescanning to the left and right of every bar is too slow. Aim for O(n) time and O(1) extra space for `trap`.

```js
trap([0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1]);  // 6
trap([4, 2, 0, 3, 2, 5]);                     // 9
waterLevels([4, 2, 0, 3, 2, 5]);              // [0, 2, 4, 1, 2, 0]
trap([3, 2, 1]);                              // 0: the water runs off the right end
```

## Starter code

```js
function trap(heights) {
  // Your code here
}

function waterLevels(heights) {
  // Your code here
}
```

## Hints

<details><summary>Hint 1</summary>

Think about one bar at a time. How high can water stand above it, given the tallest bars somewhere to its left and somewhere to its right?

</details>

<details><summary>Hint 2</summary>

Water above bar i is min(tallest on the left, tallest on the right) minus its height. Two pointers find this without storing prefix arrays: always process the side whose running maximum is lower.

</details>

<details><summary>Hint 3</summary>

Rescanning left and right for every bar is quadratic. Also, water never rises above the lower of the two walls, so the ends of the array and slopes hold nothing.

</details>

## Solution

The full answer is free on UIRound: [Compute trapped rain water with two pointers](https://uiround.com/questions/compute-trapped-rain-water-with-two-pointers). It has a tested solution, a step-by-step explanation, edge cases, follow-up questions with model answers, and the tests to run your own code against.

Found a mistake in this question? [Report it](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml&title=%5BQuestion%201004%5D%20).
