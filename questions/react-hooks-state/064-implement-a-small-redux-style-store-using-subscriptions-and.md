# Implement a small Redux-style store using subscriptions and reducers

**Track:** React hooks & state  
**Level:** Medium  
**Time:** about 35 minutes  
**Reported at:** Rippling, Flipkart

**[Solve it in the browser with tests](https://uiround.com/questions/implement-a-small-redux-style-store-using-subscriptions-and)**: free, no account needed.

## Problem

Implement the core of Redux and a React binding:

- `createStore(reducer, preloadedState)` returns `{ getState, dispatch, subscribe }`.
  - On creation, dispatch an internal `{ type: "@@INIT" }` action so reducers can supply their default state.
  - `dispatch(action)` runs the reducer, stores the new state, calls every subscriber, and returns the action.
  - `subscribe(listener)` returns an `unsubscribe` function.
- `combineReducers({ key: reducer, … })` builds one reducer from several slice reducers.
- `useSelector(store, selector)` returns `selector(store.getState())` and re-renders the component **only when that selected value changes**.

```jsx
const store = createStore(combineReducers({ todos, filter }));
function Count() {
  const count = useSelector(store, (state) => state.todos.length);
  return <span>{count}</span>; // does not re-render when only the filter changes
}
store.dispatch({ type: "todos/add", text: "Ship it" });
```

**Requirements**

- Actions must be plain objects with a string `type`; otherwise throw a `TypeError`.
- Reducers may not dispatch: calling `dispatch` while a reducer runs throws an `Error`.
- A listener that unsubscribes (or subscribes) during a dispatch does not change who is notified for **that** dispatch.
- `combineReducers` returns the **same** state object when no slice changed.

## Starter code

```jsx
import { useSyncExternalStore } from "react";

function createStore(reducer, preloadedState) {
  // Your code here
}

function combineReducers(reducers) {
  // Your code here
}

function useSelector(store, selector) {
  // Your code here
}

// Preview: a counter backed by the store.
function counter(state = 0, action) {
  return action.type === "inc" ? state + 1 : state;
}
const demoStore = createStore(counter);
function App() {
  const count = useSelector(demoStore, (s) => s);
  return <button onClick={() => demoStore.dispatch({ type: "inc" })}>Count: {String(count)}</button>;
}
```

## Hints

<details><summary>Hint 1</summary>

Which pieces must be synchronous and in what order when an action is dispatched?

</details>

<details><summary>Hint 2</summary>

Hold state in a closure; `dispatch` validates the action, calls the reducer, stores the result, then notifies subscribers; React binds through `useSyncExternalStore`.

</details>

<details><summary>Hint 3</summary>

Notify from a copy of the listener list, so subscribing or unsubscribing mid-dispatch doesn't affect that round. Block `dispatch` inside reducers; `combineReducers` returns the same state if nothing changed.

</details>

## Solution

The full answer is free on UIRound: [Implement a small Redux-style store using subscriptions and reducers](https://uiround.com/questions/implement-a-small-redux-style-store-using-subscriptions-and). It has a tested solution, a step-by-step explanation, edge cases, follow-up questions with model answers, and the tests to run your own code against.

Found a mistake in this question? [Report it](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml&title=%5BQuestion%2064%5D%20).
