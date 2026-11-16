# SDE-3 and senior frontend interview: questions and preparation (5+ years)

What SDE-3, senior and lead frontend interviews test once you have 5 or more years of experience: frontend system design, architecture trade-offs, performance at scale, hard coding problems and leadership. With free senior frontend interview questions you can solve with tests on [UIRound](https://uiround.com).

## What changes at SDE-3 and senior

The title differs by company (SDE-3, Senior Frontend Engineer, Senior UI Engineer, Lead), and the bar is similar. Interviewers move from "can you build it" to "can you own it":

- **System design carries the most weight.** Often one or two rounds: design a chat app, a news feed, a dashboard or a design system, with real trade-offs.
- **Depth over breadth.** Why React re-renders, how the browser schedules work, what a cache invalidation strategy costs, how a micro-frontend shares dependencies.
- **Performance and reliability at scale:** Core Web Vitals, bundle budgets, rendering strategies, observability, failure handling.
- **Hard coding problems** are still asked, often a harder async or data-structure problem than at SDE-2.
- **Leadership:** driving a project across teams, mentoring, raising the quality bar, handling disagreement. Expect a full behavioral round.

## The usual senior loop

| Round | What happens |
| --- | --- |
| Coding | A hard JavaScript or DSA problem: a scheduler, a dependency graph, a parser |
| Machine coding | A larger build, judged on architecture as much as features |
| Frontend system design | 45 to 60 minutes on one product, from requirements to performance and failure modes |
| Architecture or deep dive | A project you led, questioned in depth |
| Behavioral and leadership | Influence, mentoring, conflict, decisions under ambiguity |

## Free senior frontend interview questions

**Frontend system design**

- [Design WhatsApp Web: real-time messaging, ordering, offline state and reconciliation](../questions/frontend-system-design/131-design-whatsapp-web-real-time-messaging-ordering-offline.md) (Hard)
- [Design an autocomplete system serving millions of users](../questions/frontend-system-design/137-design-an-autocomplete-system-serving-millions-of-users.md) (Hard)
- [Design Google Maps/Uber live tracking](../questions/frontend-system-design/140-design-google-maps-uber-live-tracking-map-rendering.md) (Hard)
- [Design a news feed with infinite scroll](../questions/frontend-system-design/204-design-a-news-feed-with-infinite-scroll.md) (Hard)

**Hard coding**

- [Implement a task scheduler with concurrency limits, priorities, cancellation, and starvation prevention](../questions/advanced-concurrency/102-implement-a-task-scheduler-with-concurrency-limits.md) (Hard)
- [Implement a single-flight token refresh mechanism](../questions/advanced-concurrency/108-implement-a-single-flight-token-refresh-mechanism-10-failed.md) (Hard)
- [Implement an asynchronous dependency graph executor](../questions/advanced-concurrency/105-implement-an-asynchronous-dependency-graph-executor-where.md) (Hard)
- [Implement a Promise library with .then(), .catch(), chaining, and asynchronous handler scheduling](../questions/advanced-concurrency/101-implement-a-promise-library-with-then-catch-chaining-and.md) (Hard)

**React and browser internals**

- [Implement a minimal React-like renderer with virtual DOM diffing and keyed reconciliation](../questions/advanced-react/111-implement-a-minimal-react-like-renderer-with-virtual-dom.md) (Hard)
- [Implement a fine-grained external state store using useSyncExternalStore without tearing](../questions/advanced-react/113-implement-a-fine-grained-external-state-store-using.md) (Hard)
- [Implement an HTTP cache with ETag validation, stale-while-revalidate, and request deduplication](../questions/advanced-browser-architecture/126-implement-an-http-cache-with-etag-validation-stale-while.md) (Hard)
- [Design a micro-frontend shell with independent deployment and shared dependency versioning](../questions/advanced-browser-architecture/128-design-a-micro-frontend-shell-with-independent-deployment.md) (Hard)

The full list: [senior frontend interview questions](https://uiround.com/interview-questions/senior-frontend). Going for staff or principal? Read the [staff frontend engineer interview guide](https://uiround.com/guides/staff-frontend-engineer-interview).

## How to prepare

1. **Take the system design course end to end.** The free [frontend system design course](https://uiround.com/system-design) covers how the round is scored, two frameworks, every building block and full case studies.
2. **Practise designs out loud, timed.** Requirements first, then architecture, data model, API, and optimisations. Write down the trade-offs you would mention.
3. **Keep coding sharp.** Two or three hard async or data-structure problems a week.
4. **Prepare two deep project stories** with numbers you actually measured, and what you would do differently.

## FAQ

<details>
<summary><b>Is SDE-3 the same as senior frontend engineer?</b></summary>

Mostly. Companies name levels differently, but SDE-3, Senior and Senior UI Engineer usually expect 5 or more years and ownership of large features or systems. Compare the levels in [SDE-1 vs SDE-2 vs senior vs staff](https://uiround.com/guides/sde-1-vs-sde-2-vs-senior-vs-staff-frontend).

</details>

<details>
<summary><b>Do senior frontend engineers still get coding rounds?</b></summary>

Yes, nearly always, and often harder ones than at SDE-2. What changes is that system design and the leadership rounds count for more.

</details>

---

Other levels: [College students and freshers](college-students-and-freshers.md) · [SDE-1](sde-1-frontend-interview.md) · [SDE-2](sde-2-frontend-interview.md) · [FAANG](faang-frontend-interview.md) · [All levels](README.md)
