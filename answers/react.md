# React interview questions and answers

The questions interviewers open with, each with a short answer you can say out loud. Every question links to the full answer on [UIRound](https://uiround.com), with examples, comparisons and the follow-up questions that come next. Free, no account needed.

Practise the coding side with tests: [React interview questions and answers](https://uiround.com/interview-questions/react).

## Beginner

### Class components vs function components in React

Both kinds of component return UI from props and state. Class components use `this`, `this.state` and lifecycle methods. Function components are plain functions that use hooks like `useState` and `useEffect`. Function components are the standard in modern React, and classes remain supported but are only required for error boundaries.

[Read the full answer](https://uiround.com/answers/class-components-vs-function-components-in-react)

### Controlled vs uncontrolled components in React

A controlled component takes its current value from React state or props and reports changes through an `onChange` handler, so React is the single source of truth. An uncontrolled component keeps its value in the DOM, and you read it when needed, using a ref or `FormData`. Both are valid; the choice depends on how much you need to react to each keystroke.

[Read the full answer](https://uiround.com/answers/controlled-vs-uncontrolled-components-in-react)

### State vs props in React: what is the difference?

Props are the inputs a component receives from its parent, like arguments to a function. State is data a component owns and changes over time with a setter such as `setCount`. A component reads its props but never changes them; it changes its own state, and that triggers a re-render. Data flows down as props, and changes flow up through callback props.

[Read the full answer](https://uiround.com/answers/state-vs-props-in-react-what-is-the-difference)

### useState vs useReducer: when to use which?

Use `useState` for simple, independent values such as a toggle, a text field or a counter. Use `useReducer` when state has several related fields or when the next state follows rules, so you want all transitions in one pure function. They are two APIs over the same mechanism, and each can be written with the other.

[Read the full answer](https://uiround.com/answers/usestate-vs-usereducer-when-to-use-which)

### What are custom hooks in React?

A custom hook is a JavaScript function whose name starts with `use` and that calls other hooks, such as `useState` or `useEffect`. It lets you reuse stateful logic between components without changing the component tree. Each component that calls the hook gets its own separate state, so sharing logic never shares data by accident.

[Read the full answer](https://uiround.com/answers/what-are-custom-hooks-in-react)

### What are React fragments used for?

A React Fragment lets a component return several sibling elements without wrapping them in an extra DOM element. You write `<>...</>` or `<Fragment>...</Fragment>`, and only the children reach the DOM. This keeps HTML valid in tables and lists, keeps flex and grid layouts intact, and avoids meaningless `div`s. Use the long form when you need a `key`.

[Read the full answer](https://uiround.com/answers/what-are-react-fragments-used-for)

### What are the rules of hooks in React?

There are two rules. Call hooks only at the top level of a component or custom hook, never inside conditions, loops, nested functions or after an early return. And call hooks only from React function components or from other hooks, never from ordinary functions or classes. React relies on the call order being identical every render.

[Read the full answer](https://uiround.com/answers/what-are-the-rules-of-hooks-in-react)

### What does lifting state up mean in React?

Lifting state up means moving state from a child component to the closest common parent, so that two or more components can share it. The parent owns the value and passes it down as props, along with callback functions the children call to request changes. This keeps one source of truth, so siblings never disagree.

[Read the full answer](https://uiround.com/answers/what-does-lifting-state-up-mean-in-react)

### What is one-way data flow in React?

One-way data flow means data in React moves in a single direction: from a parent component down to its children as props. A child cannot change the data it receives. To request a change, it calls a callback the parent passed down, the parent updates its state, and the new data flows down again. This makes it easy to see where any value comes from and why it changed.

[Read the full answer](https://uiround.com/answers/what-is-one-way-data-flow-in-react)

### What is prop drilling, and how do you avoid it?

Prop drilling is passing data through several layers of components that do not use it, only so a deeply nested component can receive it. It makes code harder to change, because every layer must know about props it does not care about. Avoid it with composition, passing `children` or elements, context, or a store, in that order.

[Read the full answer](https://uiround.com/answers/what-is-prop-drilling-and-how-do-you-avoid-it)

### What is the virtual DOM in React?

The virtual DOM is a lightweight tree of plain JavaScript objects that describes what the UI should look like. When state changes, React builds a new tree, compares it with the previous one, and applies only the differences to the real DOM. You describe the result; React works out the smallest set of DOM changes.

[Read the full answer](https://uiround.com/answers/what-is-the-virtual-dom-in-react)

### What is useRef used for in React?

`useRef` returns an object with a `current` property that React keeps the same across renders. Changing `current` does not trigger a re-render. It has two main uses: holding a reference to a DOM element, and storing a mutable value, such as a timer id or the previous value, that the UI does not display.

[Read the full answer](https://uiround.com/answers/what-is-useref-used-for-in-react)

### Why do lists need keys in React, and why not use the index?

Keys give each item in a list a stable identity, so React can tell which items were added, moved or removed between renders. Using the array index as a key ties identity to position. When items are inserted, removed or reordered, React then keeps state, such as input text, on the wrong row.

[Read the full answer](https://uiround.com/answers/why-do-lists-need-keys-in-react-and-why-not-use-the-index)

### Why does a React component re-render?

A React component re-renders when its own state changes, when its parent re-renders, or when a context value it reads changes. A prop change is not the trigger by itself: by default, children render again whenever the parent does, even if their props are identical. `React.memo` can skip that.

[Read the full answer](https://uiround.com/answers/why-does-a-react-component-re-render)

## Intermediate

### How do code splitting and React.lazy work?

Code splitting breaks your JavaScript bundle into smaller chunks that load only when needed. In React you split with `React.lazy`, which takes a function returning a dynamic `import()`, and wrap the lazy component in `<Suspense>` to show a fallback while the chunk downloads. The result is a smaller first load and faster startup.

[Read the full answer](https://uiround.com/answers/how-do-code-splitting-and-react-lazy-work)

### How do React class lifecycle methods map to hooks?

Most class lifecycle methods map to `useEffect`: `componentDidMount` is an effect with an empty dependency array, `componentDidUpdate` is an effect with dependencies, and `componentWillUnmount` is the cleanup function an effect returns. `shouldComponentUpdate` becomes `memo`, and constructor state becomes `useState`. Two methods have no hook yet: `getSnapshotBeforeUpdate` and the error-boundary methods. The bigger change is thinking in synchronisation, not lifecycle events.

[Read the full answer](https://uiround.com/answers/how-do-react-class-lifecycle-methods-map-to-hooks)

### How do you debug a React app?

Debug a React app by reproducing the bug reliably, then narrowing it down: inspect props and state in React DevTools, pause in the browser debugger, check the Network panel for bad data, and use the Profiler for slow or repeated renders. Most React bugs are stale closures, wrong effect dependencies, mutated state, unstable keys or race conditions, so check those first.

[Read the full answer](https://uiround.com/answers/how-do-you-debug-a-react-app)

### How do you optimize React performance?

Optimize React performance by measuring first with the React DevTools Profiler, then removing unnecessary work: keep state close to where it is used, avoid re-rendering large subtrees, split code by route, virtualise long lists, and memoise only the expensive parts. Most slow React apps have a few specific hot spots, not a general problem.

[Read the full answer](https://uiround.com/answers/how-do-you-optimize-react-performance)

### How does forwardRef work, and what changed in React 19?

`forwardRef` lets a component pass a `ref` it receives from its parent down to a DOM element or another component inside it. Before React 19, function components could not receive `ref` as a prop, so `forwardRef` was required. In React 19, `ref` is a regular prop for function components, so `forwardRef` is no longer needed.

[Read the full answer](https://uiround.com/answers/how-does-forwardref-work-and-what-changed-in-react-19)

### How does useEffect work: dependencies and cleanup

`useEffect` runs a function after React has rendered and painted, letting a component synchronise with something outside React: a subscription, a timer, a network request or the DOM. It re-runs when a value in its dependency array changes, and React runs the previous effect's cleanup function before each re-run and when the component unmounts.

[Read the full answer](https://uiround.com/answers/how-does-useeffect-work-dependencies-and-cleanup)

### Presentational vs container components: is the pattern still useful?

Presentational components only render what they receive as props; container components fetch data, hold state and pass it down. The strict split was popular before hooks because classes were the only way to hold logic. Today custom hooks carry that logic, so you rarely need a separate container for every view. The idea still helps: keep rendering pure and easy to test, and keep data and side effects at the edges.

[Read the full answer](https://uiround.com/answers/presentational-vs-container-components-is-the-pattern-still-useful)

### React element vs component vs node: what is the difference?

A component is a function (or class) that returns UI, such as `function Avatar() {}`. An element is the small, immutable object that JSX like `<Avatar size={40} />` creates: a description of what to render, not the rendered thing. A node is anything React can render: elements, strings, numbers, `null`, booleans, portals and arrays of these. Components produce elements; elements and other nodes fill the tree.

[Read the full answer](https://uiround.com/answers/react-element-vs-component-vs-node-what-is-the-difference)

### useEffect vs useLayoutEffect: what is the difference?

`useEffect` runs after React has updated the DOM and the browser has painted, so it does not block what the user sees. `useLayoutEffect` runs after the DOM updates but before the browser paints, and React waits for it to finish. Use `useLayoutEffect` only to measure or adjust the DOM so the user never sees an intermediate frame.

[Read the full answer](https://uiround.com/answers/useeffect-vs-uselayouteffect-what-is-the-difference)

### useMemo vs useCallback: what is the difference?

`useMemo` caches the result of a calculation between renders, and `useCallback` caches the function itself. `useCallback(fn, deps)` is equivalent to `useMemo(() => fn, deps)`. Both only recompute when a dependency changes, and both are performance tools: they help when paired with `memo`, effects or genuinely expensive work, and do nothing useful otherwise.

[Read the full answer](https://uiround.com/answers/usememo-vs-usecallback-what-is-the-difference)

### Vue vs React: how do you choose?

React and Vue both build component-based UIs with a virtual DOM, and either can power a large production app. React re-runs component functions when state changes and leaves most decisions to you and its ecosystem. Vue tracks which reactive values each component reads, updates only what depends on them, and ships official answers for routing and state. Choose by team experience, hiring and ecosystem, not benchmarks.

[Read the full answer](https://uiround.com/answers/vue-vs-react-how-do-you-choose)

### What are error boundaries in React?

An error boundary is a component that catches JavaScript errors thrown while rendering its child tree, logs them, and shows a fallback UI instead of unmounting the whole app. It is still written as a class component, using `getDerivedStateFromError` and `componentDidCatch`, or you can use a library wrapper.

[Read the full answer](https://uiround.com/answers/what-are-error-boundaries-in-react)

### What are higher-order components in React?

A higher-order component (HOC) is a function that takes a component and returns a new component that wraps it, adding props or behaviour such as authentication checks, data loading or logging. It is a pattern built on composition, not a React API. Most new code uses hooks instead, but you still meet HOCs in older codebases and libraries.

[Read the full answer](https://uiround.com/answers/what-are-higher-order-components-in-react)

### What are portals in React?

A portal renders a component's children into a different DOM node, usually `document.body`, while keeping them in the same place in the React tree. You create one with `createPortal(children, domNode)` from `react-dom`. Portals are how modals, tooltips, dropdowns and toasts escape clipping and stacking problems caused by their parent elements.

[Read the full answer](https://uiround.com/answers/what-are-portals-in-react)

### What are the most common React anti-patterns?

The most common React anti-patterns are storing values you could compute, syncing state with `useEffect`, mutating state, using array indexes as keys for lists that change, defining components inside components, and putting fast-changing values in one big context. They cause stale UI, extra renders, lost input and bugs that only appear after reordering or refactoring. Most fixes delete code rather than add it.

[Read the full answer](https://uiround.com/answers/what-are-the-most-common-react-anti-patterns)

### What is hydration in React?

Hydration is the step where React takes HTML that the server already rendered and attaches event handlers and state to it in the browser, so the static page becomes an interactive app. React reuses the existing DOM instead of rebuilding it. It must produce the same output as the server did, or it reports a mismatch.

[Read the full answer](https://uiround.com/answers/what-is-hydration-in-react)

### What is React.memo and when should you use it?

`React.memo` wraps a component so React skips re-rendering it when its parent re-renders with the same props. Props are compared one by one with `Object.is`. Use it for components that are expensive to render and re-render often with unchanged props. It does nothing for changes to the component's own state or context.

[Read the full answer](https://uiround.com/answers/what-is-react-memo-and-when-should-you-use-it)

### What is reconciliation in React?

Reconciliation is the process React uses to compare the element tree from the latest render with the previous one and decide the smallest set of changes to apply. It follows two rules: elements of different types are replaced, and elements of the same type are updated in place. Keys help it match items in lists.

[Read the full answer](https://uiround.com/answers/what-is-reconciliation-in-react)

### What is state batching in React?

State batching means React groups multiple state updates that happen in the same tick into a single re-render. Since React 18, this happens everywhere: event handlers, timeouts, promises and native event handlers. Updates are queued, and React renders once with the final result, which avoids wasted renders and half-updated UI.

[Read the full answer](https://uiround.com/answers/what-is-state-batching-in-react)

### What is the render props pattern in React?

The render props pattern is a way to share behaviour between components by passing a function as a prop. The component owns the logic, such as tracking the mouse or loading data, and calls that function with its current values so the caller decides what to render. Custom hooks replaced most uses, but the pattern still fits some cases.

[Read the full answer](https://uiround.com/answers/what-is-the-render-props-pattern-in-react)

## Advanced

### useDeferredValue vs useTransition: what is the difference?

Both hooks tell React that some rendering can wait so typing and clicks stay responsive. `useTransition` wraps the state update itself: you call `startTransition(() => setX(...))` and get an `isPending` flag. `useDeferredValue` wraps a value: you pass in a value and get back a copy that lags behind during heavy renders. Use the first when you own the setter, the second when you only receive the value.

[Read the full answer](https://uiround.com/answers/usedeferredvalue-vs-usetransition-what-is-the-difference)

### What is React Fiber?

React Fiber is the reconciliation engine introduced in React 16 and still used today. It represents each component as a "fiber", a plain object in a linked tree, so React can pause, resume, reprioritize or discard rendering work. That interruptibility is what makes concurrent features like transitions and Suspense possible.

[Read the full answer](https://uiround.com/answers/what-is-react-fiber)

[All topics](../README.md#interview-questions-and-answers-by-topic) · [Report a mistake](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml)
