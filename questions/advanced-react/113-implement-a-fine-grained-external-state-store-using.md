# Implement a fine-grained external state store using useSyncExternalStore without tearing

**Track:** Advanced React & rendering  
**Level:** Hard  
**Time:** about 60 minutes

**[Solve it in the browser with tests](https://uiround.com/questions/implement-a-fine-grained-external-state-store-using)**: free, no account needed.

## Problem

Build a tiny Zustand-style store whose components re-render only when **the slice they select** changes, and that is safe under concurrent rendering (no tearing).

- `createStore(initialState)` returns `{ getState, setState, subscribe }`. `setState(partial | updater)` shallow-merges into a **new** state object and notifies listeners; if nothing changed (every merged key is `Object.is` equal), it keeps the same state and does not notify.
- `useStore(store, selector = (s) => s, isEqual = Object.is)` returns `selector(state)` using `useSyncExternalStore`, and re-renders only when the selection changes according to `isEqual`.
- `shallowEqual(a, b)` compares two objects or arrays one level deep.

```jsx
const store = createStore({ user: { name: "Asha" }, cart: [], theme: "light" });
function CartCount() {
  const count = useStore(store, (s) => s.cart.length); // ignores theme and user changes
  return <span>{count}</span>;
}
function Header() {
  const { name, theme } = useStore(store, (s) => ({ name: s.user.name, theme: s.theme }), shallowEqual);
  return <h1 className={theme}>{name}</h1>;
}
```

**Requirements**

- A selector that builds a new object every time must not cause an infinite loop or a re-render when the selected values are equal under `isEqual`.
- Unsubscribe when components unmount.

## Starter code

```jsx
import { useRef, useSyncExternalStore } from "react";

function createStore(initialState) {
  // Your code here
}

function shallowEqual(a, b) {
  // Your code here
}

function useStore(store, selector = (s) => s, isEqual = Object.is) {
  // Your code here
}

// Preview
const demo = createStore({ count: 0, theme: "light" });
function Count() {
  const count = useStore(demo, (s) => s.count);
  return <button onClick={() => demo.setState((s) => ({ count: s.count + 1 }))}>Count: {String(count)}</button>;
}
function App() {
  return <Count />;
}
```

## Hints

<details><summary>Hint 1</summary>

Think about what React needs to be sure the store has not changed mid-render, and why a selector returning a fresh object is dangerous.

</details>

<details><summary>Hint 2</summary>

Keep immutable state in the store and pass a selector to `useSyncExternalStore` through a cached getSnapshot, so equal selections return the same reference.

</details>

<details><summary>Hint 3</summary>

Cache the selection per state object and compare with `isEqual`, otherwise a selector building an object loops forever. `setState` must skip notifying when no merged key changed, and unsubscribe on unmount.

</details>

## Solution

The full answer is free on UIRound: [Implement a fine-grained external state store using useSyncExternalStore without tearing](https://uiround.com/questions/implement-a-fine-grained-external-state-store-using). It has a tested solution, a step-by-step explanation, edge cases, follow-up questions with model answers, and the tests to run your own code against.

Found a mistake in this question? [Report it](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml&title=%5BQuestion%20113%5D%20).
