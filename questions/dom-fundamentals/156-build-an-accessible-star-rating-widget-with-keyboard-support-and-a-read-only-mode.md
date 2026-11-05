# Build an accessible star-rating widget with keyboard support and a read-only mode

**Track:** Browser & DOM fundamentals  
**Level:** Easy  
**Time:** about 25 minutes  
**Reported at:** Amazon, Adobe

**[Solve it in the browser with tests](https://uiround.com/questions/build-an-accessible-star-rating-widget-with-keyboard-support-and-a-read-only-mode)**: free, no account needed.

## Problem

Without a framework, write `createStarRating(container, options)` that renders a star rating people can use with a mouse, a keyboard or a screen reader.

Options: `{ max = 5, value = 0, readOnly = false, label = "Rating", onChange }`.

**Markup**

- A wrapper `<div role="radiogroup" aria-label="{label}">` holding `max` stars.
- Each star is a `<button type="button" role="radio">` with `aria-label="N star"` or `"N stars"`, `aria-checked="true"` only on the selected star, and `data-filled="true"` or `"false"` for drawing.

**Behaviour**

- Clicking star N selects N and calls `onChange(N)`. Clicking the selected star again clears the rating to 0.
- Roving tabindex: the selected star (or the first star when the value is 0) has `tabindex="0"`; all others `-1`.
- On a focused star: `ArrowRight`/`ArrowUp` add one, `ArrowLeft`/`ArrowDown` subtract one (never below 1), `Home` selects 1 and `End` selects `max`. The newly selected star receives focus, and `onChange` fires.
- Hovering star N previews N filled stars; leaving the widget restores the real value.
- `readOnly`: the group gets `aria-readonly="true"` and `tabindex="0"`, stars are not focusable (`tabindex="-1"`), and clicks, keys and hover change nothing.

Return `{ getValue(), setValue(n), destroy() }`. `setValue` updates the widget without calling `onChange`; `destroy` removes the markup and its listeners.

## Starter code

```js
function createStarRating(container, { max = 5, value = 0, readOnly = false, label = "Rating", onChange } = {}) {
  // Your code here
}

// Try it: press Run, then click the stars or use the arrow keys.
createStarRating(document.getElementById("root"), {
  value: 3,
  onChange: (n) => console.log("rated", n),
});
```

## Hints

<details><summary>Hint 1</summary>

Think about which native control this resembles for a screen reader. Choosing the right role changes the markup and the keyboard behaviour.

</details>

<details><summary>Hint 2</summary>

Use radio-group semantics with a roving tabindex, one render function driven by `value`, `preview` and `readOnly`, and delegated listeners on the group.

</details>

<details><summary>Hint 3</summary>

Clicking the selected star clears to 0, arrow keys never go below 1, the new star must receive focus, and `setValue` must not call `onChange`. In read-only mode nothing is focusable or interactive.

</details>

## Solution

The full answer is free on UIRound: [Build an accessible star-rating widget with keyboard support and a read-only mode](https://uiround.com/questions/build-an-accessible-star-rating-widget-with-keyboard-support-and-a-read-only-mode). It has a tested solution, a step-by-step explanation, edge cases, follow-up questions with model answers, and the tests to run your own code against.

Found a mistake in this question? [Report it](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml&title=%5BQuestion%20156%5D%20).
