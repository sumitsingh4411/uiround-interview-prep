# Implement a virtualized list rendering 100,000 items efficiently

**Track:** React application patterns  
**Level:** Medium  
**Time:** about 45 minutes  

**[Solve it in the browser with tests](https://uiround.com/questions/implement-a-virtualized-list-rendering-100-000-items)**: free, no account needed.

## Problem

Rendering 100,000 `<div>`s freezes the page. Build `<VirtualList items={items} itemHeight={40} height={400} overscan={3} renderItem={(item, index) => …} />` that renders **only the rows that are visible**, plus a few extra (`overscan`) above and below.

- The scroll container is a `<div data-testid="viewport">` with the given `height` and `overflow: auto`.
- Inside it, a spacer `<div data-testid="spacer">` is `items.length * itemHeight` pixels tall, so the scrollbar looks right.
- Each rendered row is absolutely positioned at `top = index * itemHeight`, has `data-index={index}`, and contains `renderItem(item, index)`.

**Requirements**

- With 100,000 items, only about `height / itemHeight + 2 * overscan` rows exist in the DOM.
- Scrolling updates which rows are rendered.
- Never render indexes below 0 or beyond the last item.
- Rows must be keyed by index, so React reuses DOM nodes efficiently while scrolling.

## Starter code

```jsx
import { useState } from "react";

function VirtualList({ items, itemHeight, height, overscan = 3, renderItem }) {
  // Your code here. Rendering all 100,000 rows would freeze the page,
  // so render only the visible window.
  return <div data-testid="viewport" style={{ height, overflow: "auto" }} />;
}

// Preview: scroll through 100,000 rows.
const ROWS = Array.from({ length: 100000 }, (_, i) => `Row ${i + 1}`);
function App() {
  return <VirtualList items={ROWS} itemHeight={36} height={260} renderItem={(item) => <span>{item}</span>} />;
}
```

## Hints

<details><summary>Hint 1</summary>

Out of 100,000 rows, how many does the user actually see at once, and what do you need to know to find them?

</details>

<details><summary>Hint 2</summary>

Track `scrollTop`, compute the first and last visible index from `itemHeight` and `height`, add overscan, and render only those rows inside a full-height spacer.

</details>

<details><summary>Hint 3</summary>

Clamp the range to `0..items.length - 1`, position rows absolutely at `index * itemHeight`, and key them by index so nodes are reused while scrolling.

</details>

## Solution

The full answer is free on UIRound: [Implement a virtualized list rendering 100,000 items efficiently](https://uiround.com/questions/implement-a-virtualized-list-rendering-100-000-items). It has a tested solution, a step-by-step explanation, edge cases, follow-up questions with model answers, and the tests to run your own code against.

Found a mistake in this question? [Report it](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml&title=%5BQuestion%2075%5D%20).
