# SDE-2 frontend interview: questions and preparation (2 to 5 years)

How SDE-2 frontend interviews differ from SDE-1, what each round expects from an engineer with 2 to 5 years of experience, and free SDE-2 frontend interview questions you can solve with tests on [UIRound](https://uiround.com).

## What changes at SDE-2

The coding is still there, and it has to be faster and cleaner. On top of it, interviewers expect:

- **Async JavaScript in depth:** promise combinators, concurrency limits, cancellation with `AbortController`, retries and caching.
- **Machine coding with quality:** a working feature plus component structure, accessibility, keyboard support and edge cases, in 60 to 90 minutes.
- **React beyond the basics:** re-renders and memoization, custom hooks, state architecture, and when not to use an effect.
- **Performance:** what slows a page down and how you would measure and fix it.
- **Frontend system design:** at many companies, one round on designing a feature such as a news feed or an autocomplete.
- **Ownership:** stories about features you shipped, trade-offs you made and problems you debugged in production.

## The usual SDE-2 loop

| Round | What happens |
| --- | --- |
| Phone screen | A JavaScript utility or DSA problem, with follow-ups |
| JavaScript and async | Build a concurrency-limited runner, a cache with TTL, or a promise utility |
| Machine coding | A larger UI build with state, data fetching and accessibility |
| Frontend system design | Requirements, component architecture, data model, API, performance |
| Behavioral and hiring manager | Ownership, conflict, impact, why this team |

## Free SDE-2 frontend interview questions

**Async and concurrency**

- [Implement mapLimit() / throttlePromises() with maximum N concurrent tasks](../questions/concurrency-scheduling/046-implement-maplimit-throttlepromises-with-maximum-n.md) (Medium)
- [Implement a concurrency-safe async cache with TTL](../questions/concurrency-scheduling/054-implement-a-concurrency-safe-async-cache-with-ttl.md) (Medium)
- [Implement retry with exponential backoff and jitter](../questions/browser-network-performance/088-implement-retry-with-exponential-backoff-and-jitter.md) (Medium)
- [Implement a fetch wrapper with timeout and AbortController](../questions/browser-network-performance/086-implement-a-fetch-wrapper-with-timeout-and-abortcontroller.md) (Medium)
- [Sequential versus parallel awaits](../questions/promises-async/735-sequential-versus-parallel-awaits-predict-how-long-each-snippet-takes-then-fix-the-slow-ones.md) (Medium)

**React and machine coding**

- [Build search-as-you-type with debounce and AbortController](../questions/react-patterns/066-build-search-as-you-type-with-debounce-and-abortcontroller.md) (Medium)
- [Implement a virtualized list rendering 100,000 items efficiently](../questions/react-patterns/075-implement-a-virtualized-list-rendering-100-000-items.md) (Medium)
- [Implement useMemo, useCallback and useRef from scratch](../questions/react-hooks-state/319-implement-usememo-usecallback-and-useref-from-scratch.md) (Medium)
- [Implement a small Redux-style store using subscriptions and reducers](../questions/react-hooks-state/064-implement-a-small-redux-style-store-using-subscriptions-and.md) (Medium)
- [Review a React pull request: find the bugs, security holes, accessibility and performance problems](../questions/react-patterns/773-review-a-react-pull-request-find-the-bugs-security-holes-accessibility-and-performance-problems.md) (Medium)

**Browser and performance**

- [Implement an analytics SDK with event batching and sendBeacon fallback](../questions/browser-network-performance/094-implement-an-analytics-sdk-with-event-batching-and.md) (Medium)
- [Work out when scripts run: classic, async, defer, module and inline](../questions/browser-network-performance/1314-work-out-when-scripts-run-classic-async-defer-module-and-inline-scripts-against-the-parser.md) (Medium)

**Frontend system design**

- [Design a news feed with infinite scroll](../questions/frontend-system-design/204-design-a-news-feed-with-infinite-scroll.md) (Hard)
- The free [frontend system design course](https://uiround.com/system-design) teaches the round from the scoring to full case studies.

The full list: [SDE-2 frontend interview questions](https://uiround.com/interview-questions/sde-2-frontend), plus [JavaScript](https://uiround.com/interview-questions/javascript-experienced) and [React](https://uiround.com/interview-questions/react-experienced) questions for 3 to 5 years of experience.

## FAQ

<details>
<summary><b>Is system design asked for SDE-2 frontend roles?</b></summary>

At many product companies, yes: one round on designing a frontend feature. Expect requirements, component architecture, state and data model, the API, and performance and accessibility. A framework such as [RADIO](https://uiround.com/guides/radio-framework) gives you a running order.

</details>

<details>
<summary><b>How long should I prepare for an SDE-2 frontend interview?</b></summary>

Four to eight weeks of steady practice works for most working engineers: async JavaScript and machine coding first, then system design, then mock interviews. The guide to [preparing while working full time](https://uiround.com/guides/frontend-interview-prep-while-working) has a weekly plan.

</details>

---

Other levels: [College students and freshers](college-students-and-freshers.md) · [SDE-1](sde-1-frontend-interview.md) · [SDE-3 and senior](sde-3-senior-frontend-interview.md) · [FAANG](faang-frontend-interview.md) · [All levels](README.md)
