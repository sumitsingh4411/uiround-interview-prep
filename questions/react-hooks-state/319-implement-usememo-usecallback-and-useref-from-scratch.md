# Implement useMemo, useCallback and useRef from scratch

**Track:** React hooks & state  
**Level:** Medium  
**Time:** about 25 minutes  

**[Solve it in the browser with tests](https://uiround.com/questions/implement-usememo-usecallback-and-useref-from-scratch)**: free, no account needed.

## Problem

"Write a polyfill for `useMemo`" tests whether you know how hooks really work. You are given a tiny hooks runtime: each component instance keeps an array of **hook slots**, and every hook call takes the next slot in order. `useState` is already written. Implement:

- **`useRef(initialValue)`**: returns the **same** object `{ current }` on every render. `initialValue` is used only on the first render. Changing `.current` does not re-render.
- **`useMemo(factory, deps)`**: calls `factory()` on the first render, and again only when a dependency changed since the last computation; otherwise returns the stored value.
  - Compare dependencies with `Object.is` (so `NaN` equals `NaN`, but `0` and `-0` differ).
  - With no `deps` (`undefined`), recompute on every render. With `[]`, compute once.
  - A different number of dependencies counts as a change.
- **`useCallback(callback, deps)`**: returns the same function identity until a dependency changes.

```js
function Search({ items, query }) {
  const filtered = useMemo(() => items.filter((i) => i.includes(query)), [items, query]);
  const onSelect = useCallback((item) => console.log(item), []);
  const renders = useRef(0);
  renders.current++;
  return { filtered, onSelect, renders: renders.current };
}
const root = createRoot(Search);
root.render({ items, query: "a" });
```

## Starter code

```js
// The runtime (provided): do not change it.
let currentInstance = null;

function createRoot(Component) {
  const instance = { hooks: [], index: 0 };
  return {
    render(props) {
      currentInstance = instance;
      instance.index = 0;
      try {
        return Component(props);
      } finally {
        currentInstance = null;
      }
    },
  };
}

function nextSlot() {
  if (!currentInstance) throw new Error("Hooks can only be called inside a component");
  return { instance: currentInstance, index: currentInstance.index++ };
}

function useState(initialValue) {
  const { instance, index } = nextSlot();
  if (!(index in instance.hooks)) {
    instance.hooks[index] = { value: typeof initialValue === "function" ? initialValue() : initialValue };
  }
  const slot = instance.hooks[index];
  const setState = (next) => {
    slot.value = typeof next === "function" ? next(slot.value) : next;
  };
  return [slot.value, setState];
}

// Your code here
function useRef(initialValue) {}

function useMemo(factory, deps) {}

function useCallback(callback, deps) {}
```

## Hints

<details><summary>Hint 1</summary>

Hooks have no names, only call order. What does the runtime track so each call finds its own saved data?

</details>

<details><summary>Hint 2</summary>

Each hook call claims the next slot. `useRef` lazily creates a stable `{ current }`; `useMemo` stores the value with its deps; `useCallback` is `useMemo` returning the function.

</details>

<details><summary>Hint 3</summary>

Compare deps with `Object.is`, treat a missing `deps` as always recompute, treat `[]` as compute once, and count a different dependency length as a change.

</details>

## Solution

The full answer is free on UIRound: [Implement useMemo, useCallback and useRef from scratch](https://uiround.com/questions/implement-usememo-usecallback-and-useref-from-scratch). It has a tested solution, a step-by-step explanation, edge cases, follow-up questions with model answers, and the tests to run your own code against.

Found a mistake in this question? [Report it](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml&title=%5BQuestion%20319%5D%20).
