# Build a todo list app in React with editing, filters and persistence

**Track:** UI machine coding  
**Level:** Medium  
**Time:** about 40 minutes  
**Reported at:** Atlassian, Intuit, Flipkart, Zepto, Apple, DP World, Groww

**[Solve it in the browser with tests](https://uiround.com/questions/build-a-todo-list-app-in-react-with-editing-filters-and-persistence)**: free, no account needed.

## Problem

The todo list is the most asked machine-coding question, and interviewers judge the details. Build `<TodoApp storageKey="todos" />`.

**Adding**

- A `<form>` with an input labelled `New todo` and an `Add` button. Submitting (button or Enter) adds the trimmed text at the **end** of the list and clears the input. Empty or whitespace-only text adds nothing.

**The list** (`<ul aria-label="Todos">`, one `<li>` per todo)

- A checkbox whose accessible label is the todo's text toggles it done. Done items have `data-done="true"`.
- An `Edit` button (`aria-label="Edit {text}"`) replaces the text with an input labelled `Edit {text}`, focused, containing the text. **Enter** or leaving the field (blur) saves the trimmed text; saving empty text **deletes** the todo. **Escape** cancels.
- A `Delete` button (`aria-label="Delete {text}"`) removes it.

**Footer**

- `{n} item left` / `{n} items left` counts todos that are not done.
- Filter buttons `All`, `Active`, `Completed`, with `aria-pressed="true"` on the current one. `Completed` shows only done todos, `Active` only the rest.
- `Clear completed` removes all done todos; it is disabled when there are none.

**Persistence**

- Load todos from `localStorage[storageKey]` on mount (ignore missing or corrupted data) and save them on every change.

## Starter code

```jsx
import { useEffect, useRef, useState } from "react";

function TodoApp({ storageKey = "todos" }) {
  // Your code here
  return null;
}

function App() {
  return <TodoApp storageKey="preview-todos" />;
}
```

## Hints

<details><summary>Hint 1</summary>

Decide what must be real state. Counts, filters and visible items can all be derived from one array and one filter value.

</details>

<details><summary>Hint 2</summary>

Keep one immutable todos array, use a real `<form>`, derive the visible list, and persist with a lazy initial state plus an effect.

</details>

<details><summary>Hint 3</summary>

Saving an edit with empty text deletes the todo, Escape cancels without saving, Enter and blur both save, and corrupt data in storage must not crash loading.

</details>

## Solution

The full answer is free on UIRound: [Build a todo list app in React with editing, filters and persistence](https://uiround.com/questions/build-a-todo-list-app-in-react-with-editing-filters-and-persistence). It has a tested solution, a step-by-step explanation, edge cases, follow-up questions with model answers, and the tests to run your own code against.

Found a mistake in this question? [Report it](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml&title=%5BQuestion%20320%5D%20).
