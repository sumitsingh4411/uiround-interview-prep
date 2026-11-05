# State management interview questions and answers

The questions interviewers open with, each with a short answer you can say out loud. Every question links to the full answer on [UIRound](https://uiround.com), with examples, comparisons and the follow-up questions that come next. Free, no account needed.

Practise the coding side with tests: [State management interview questions: Redux, Zustand, TanStack Query](https://uiround.com/interview-questions/state-management).

## Beginner

### Server state vs client state in React: what is the difference?

Server state is data that lives on a backend and that your app only holds a copy of, such as a product list or a user profile. It can change without you, so it can go stale and must be fetched, cached and refetched. Client state is data the browser owns, such as an open modal, a selected tab or a form draft. It is always correct because nobody else can change it.

[Read the full answer](https://uiround.com/answers/server-state-vs-client-state-in-react)

### What is Redux, and how does it work?

Redux is a state management library that keeps shared application state in a single store outside your components. The state is read-only: to change it, you dispatch an action, a plain object that describes what happened. A pure function called a reducer takes the current state and the action and returns the next state. The store then notifies subscribers, and the UI re-renders from the new state.

[Read the full answer](https://uiround.com/answers/what-is-redux-and-how-does-it-work)

### What is TanStack Query (React Query), and why use it?

TanStack Query, formerly React Query, is a library for fetching, caching and updating server data in the browser. You give it a query key and a function that returns a promise. It stores the result in a shared cache, removes duplicate requests, refetches data when it becomes stale, retries failures and tracks loading and error states. It replaces most hand-written `useEffect` fetching and most server data kept in global stores.

[Read the full answer](https://uiround.com/answers/what-is-tanstack-query-react-query-and-why-use-it)

## Intermediate

### Context API vs Redux: which should you use?

Context is a way to pass a value to any component below a provider without passing props. It does not manage state by itself. Redux is a state container with a single store, actions, reducers, selectors, middleware and devtools. Use context for low-frequency values like theme or the current user, and a store when many components share fast-changing, complex state.

[Read the full answer](https://uiround.com/answers/context-api-vs-redux-which-should-you-use)

### How do optimistic updates work with TanStack Query?

An optimistic update shows the result of a mutation before the server confirms it, so the UI feels instant. With TanStack Query you either render the pending mutation's `variables` directly in the UI, or you write the expected result into the cache in `onMutate`, keep a snapshot of the old data, restore it in `onError`, and refetch in `onSettled` so the cache ends up matching the server.

[Read the full answer](https://uiround.com/answers/how-do-optimistic-updates-work-with-tanstack-query)

### How do you normalize state in Redux, and why does it matter?

Normalizing means storing each kind of record in its own table, keyed by id, and referring to related records by id instead of nesting copies. A typical slice is `{ ids: [...], entities: { [id]: record } }`. Every record then exists once, an update touches one place, lookups by id are instant, and components can select exactly the record they show. Redux Toolkit's `createEntityAdapter` generates the reducers and selectors for that shape.

[Read the full answer](https://uiround.com/answers/how-do-you-normalize-state-in-redux)

### How does createSlice work in Redux Toolkit?

`createSlice` takes a slice name, an initial state and an object of case reducers, and returns a reducer plus one action creator per case. Each action type is `"name/caseName"`, so you never write type constants. The reducer is built with `createReducer`, which runs case reducers through Immer, so you can write `state.items.push(item)` and still get an immutable update. Actions defined elsewhere are handled in `extraReducers`.

[Read the full answer](https://uiround.com/answers/how-does-createslice-work-in-redux-toolkit)

### How does Zustand work?

Zustand keeps your state in a plain JavaScript closure outside React, together with a set of listener functions. Calling `set` merges a partial update into the state and notifies every listener. The hook returned by `create` subscribes a component through `useSyncExternalStore` and runs your selector on each change, so the component re-renders only when the selected value changes. There is no provider, no reducer and no action type.

[Read the full answer](https://uiround.com/answers/how-does-zustand-work)

### Redux thunk vs redux-saga: what is the difference?

Both are Redux middleware for side effects such as API calls. A thunk is a function you dispatch instead of an action; it receives `dispatch` and `getState` and runs async code directly. Redux-saga runs generator functions that listen for actions and yield effect descriptions like `call`, `put` and `takeLatest`, which the saga middleware executes. Thunks are simpler and the default in Redux Toolkit. Sagas suit complex, long-running or cancellable workflows.

[Read the full answer](https://uiround.com/answers/redux-thunk-vs-redux-saga-what-is-the-difference)

### RTK Query vs TanStack Query (React Query): which should you use?

Both are server-state caches that fetch, deduplicate, cache and refetch data for you, so the core ideas carry over. RTK Query is part of Redux Toolkit: endpoints are defined up front, the cache lives in the Redux store and invalidation uses tags. TanStack Query is independent of any state library: queries are defined where they are used by a key and a function, with richer defaults. Choose RTK Query in a Redux app, TanStack Query otherwise.

[Read the full answer](https://uiround.com/answers/rtk-query-vs-tanstack-query-which-should-you-use)

### TanStack Query vs Redux for data fetching: which should you use?

They solve different problems. TanStack Query is a cache for server data: it fetches, deduplicates, tracks staleness, refetches and retries for you. Redux is a store for client state; with thunks you can fetch data into it, but you write the caching, loading flags and refetch logic yourself. For data fetching, use TanStack Query, or RTK Query if the app already uses Redux. Keep Redux, or something smaller, for state the browser owns.

[Read the full answer](https://uiround.com/answers/tanstack-query-vs-redux-for-data-fetching)

### useSelector vs connect in React-Redux: what is the difference?

Both connect a component to the Redux store. `useSelector` and `useDispatch` are hooks called inside a function component: each `useSelector` subscribes to the store and re-renders when its selected value changes by `===`. `connect` is a higher-order component that maps state and dispatch to props, compares the result shallowly and also skips renders when the parent passes equal props. Hooks are the recommended API for new code; `connect` still works and is common in older codebases.

[Read the full answer](https://uiround.com/answers/useselector-vs-connect-in-react-redux-what-is-the-difference)

### What are staleTime and gcTime in TanStack Query?

`staleTime` is how long fetched data counts as fresh. While it is fresh, TanStack Query serves it from the cache without refetching. Once it is stale, the cached data is still shown, but a refetch runs on triggers like mount or window focus. `gcTime` is how long a query with no active users stays in memory before it is deleted. The defaults are 0 for `staleTime` and five minutes for `gcTime`. In v4, `gcTime` was called `cacheTime`.

[Read the full answer](https://uiround.com/answers/what-are-staletime-and-gctime-in-tanstack-query)

### What is createAsyncThunk in Redux Toolkit, and how does it work?

`createAsyncThunk` is Redux Toolkit's helper for async logic. You give it an action type prefix and an async "payload creator"; it returns a thunk action creator that dispatches a `pending` action, runs your function, then dispatches `fulfilled` with the result or `rejected` with a serialised error. Your slice handles those three actions in `extraReducers` to track loading state and store the data.

[Read the full answer](https://uiround.com/answers/what-is-createasyncthunk-in-redux-toolkit)

### What is createSelector, and why memoize Redux selectors?

`createSelector`, from the Reselect library and re-exported by Redux Toolkit, builds a memoized selector. It takes input selectors and a result function. When the inputs return the same references as last time, it returns the cached result instead of recomputing. That matters because `useSelector` re-renders a component whenever the selected value changes by reference, so a selector that builds a new array on every call re-renders on every dispatch.

[Read the full answer](https://uiround.com/answers/what-is-createselector-and-why-memoize-redux-selectors)

### What is Redux middleware, and how does it work?

Redux middleware is a function that wraps the store's `dispatch`, so code can run after an action is dispatched and before it reaches the reducers. Each middleware has the curried shape `store => next => action`. It can log the action, change it, stop it, dispatch other actions or start async work, then call `next(action)` to pass it on. Middleware is where side effects belong, because reducers must stay pure.

[Read the full answer](https://uiround.com/answers/what-is-redux-middleware-and-how-does-it-work)

### What is Redux Toolkit, and why should you use it?

Redux Toolkit (RTK) is the official, recommended way to write Redux. It wraps the Redux core with APIs that remove most of the boilerplate: `configureStore` sets up the store with good defaults, `createSlice` generates action creators and reducers from one object, Immer lets reducers use simple mutating syntax safely, and RTK Query handles data fetching and caching. You get the same Redux model with far less code and fewer bugs.

[Read the full answer](https://uiround.com/answers/what-is-redux-toolkit-and-why-should-you-use-it)

### What is RTK Query, and how does it work?

RTK Query is the data-fetching and caching tool built into Redux Toolkit. You describe your API's endpoints once with `createApi`, and it generates React hooks that fetch data, cache it in the Redux store by endpoint and argument, deduplicate identical requests, track loading and error state, and refetch when a mutation invalidates the data. It replaces most hand-written fetch thunks and the `isLoading` flags that come with them.

[Read the full answer](https://uiround.com/answers/what-is-rtk-query-and-how-does-it-work)

### Zustand vs Redux: which should you use?

Both are external stores that React components subscribe to with selectors. Zustand is a small library where the store is a hook and you update state by calling functions inside it. Redux, usually written with Redux Toolkit, routes every change through dispatched actions and reducers, which adds structure, devtools history and a middleware pipeline. Pick Zustand for simple shared client state. Pick Redux when a large team needs strict conventions and traceable updates.

[Read the full answer](https://uiround.com/answers/zustand-vs-redux-which-should-you-use)

[All topics](../README.md#interview-questions-and-answers-by-topic) · [Report a mistake](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml)
