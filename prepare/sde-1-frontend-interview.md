# SDE-1 frontend interview: questions and preparation (0 to 2 years)

How SDE-1 frontend interviews run, what each round expects from an engineer with 0 to 2 years of experience, and free SDE-1 frontend interview questions you can solve with tests on [UIRound](https://uiround.com). Covers product companies, startups and big tech.

## What SDE-1 interviewers look for

At SDE-1 the bar is working code and solid fundamentals, not architecture. Interviewers want to see that you can:

- Write correct JavaScript without a framework: closures, `this`, promises, the event loop, array and object methods.
- Build a small UI feature end to end, in plain JavaScript or React, in under an hour.
- Explain why your code works and test the edge cases yourself.
- Solve easy and medium problems on arrays, strings, hash maps and trees.
- Learn quickly and ask good questions when the task is unclear.

System design is rarely a full round at SDE-1, but a simple design question ("how would you structure this page's state?") is common.

## The usual SDE-1 loop

| Round | What happens | Practise with |
| --- | --- | --- |
| Online assessment or phone screen | One or two coding problems, sometimes JavaScript output questions | Easy DSA and output-based questions, timed |
| JavaScript fundamentals | Implement a utility (`debounce`, `Promise.all`, `bind`, flatten) and explain it | The utilities below, written from memory |
| Machine coding | Build a component or small app: typeahead, todo list, tabs, infinite scroll | Builds with tests and a 60-minute timer |
| React | Hooks, state, effects and re-renders, often inside the machine coding round | Custom hooks and a small store |
| Hiring manager or behavioral | Projects, ownership, how you handle feedback | Two or three stories in the STAR format |

The order and count change by company: see [how each company runs its frontend loop](https://uiround.com/companies).

## Free SDE-1 frontend interview questions

All free with full answers in this repository; each opens on UIRound in a browser editor with tests.

**JavaScript utilities**

- [Implement Promise.all() from scratch](../questions/promises-async/036-implement-promise-all-from-scratch.md) (Medium)
- [Implement debounce() with cancel() and flush()](../questions/js-utilities/026-implement-debounce-with-cancel-and-flush.md) (Medium)
- [Implement throttle() with leading and trailing options](../questions/js-utilities/027-implement-throttle-with-leading-and-trailing-options.md) (Medium)
- [Implement curry() supporting partial application](../questions/js-utilities/028-implement-curry-supporting-partial-application.md) (Medium)
- [Implement Function.prototype.bind(), including partial arguments](../questions/js-fundamentals/006-implement-function-prototype-bind-including-partial.md) (Easy)

**Machine coding**

- [Build a typeahead/autocomplete with caching and keyboard support](../questions/ui-machine-coding/077-build-a-typeahead-autocomplete-with-caching-and-keyboard.md) (Medium)
- [Build a todo list app in React with editing, filters and persistence](../questions/ui-machine-coding/320-build-a-todo-list-app-in-react-with-editing-filters-and-persistence.md) (Medium)
- [Build infinite scrolling using IntersectionObserver](../questions/react-patterns/068-build-infinite-scrolling-using-intersectionobserver.md) (Medium)
- [Build a nested comments component with threaded replies](../questions/ui-machine-coding/081-build-a-nested-comments-component-with-threaded-replies.md) (Medium)

**React**

- [Implement useDebounce() for values](../questions/react-hooks-state/056-implement-usedebounce-for-values.md) (Medium)
- [Implement useInterval() without stale closures](../questions/react-hooks-state/059-implement-useinterval-without-stale-closures.md) (Medium)

**DSA in JavaScript**

- [Two Sum using a hash map](../questions/strings-objects-algorithms/013-two-sum-using-a-hash-map.md) (Easy)
- [Implement binary search and its variants](../questions/strings-objects-algorithms/351-implement-binary-search-and-its-variants-insert-position-first-and-last-match-rotated-arrays.md) (Easy)
- [Validate a binary search tree](../questions/dsa-patterns/983-validate-a-binary-search-tree.md) (Medium)

The full list, with company tags for Pro members: [SDE-1 frontend interview questions](https://uiround.com/interview-questions/sde-1-frontend).

## A four-week SDE-1 plan

| Week | Focus |
| --- | --- |
| 1 | JavaScript fundamentals and the utilities above, from memory |
| 2 | Machine coding: one build a day against a timer |
| 3 | React hooks and state, plus easy and medium DSA |
| 4 | Mock interviews, output questions and your project stories |

Have a date? The [interview planner](https://uiround.com/interview-planner) builds a day-by-day plan from it. Read [what a machine coding round is](https://uiround.com/guides/machine-coding-round) before week 2.

## FAQ

<details>
<summary><b>What is the difference between SDE-1 and SDE-2 frontend interviews?</b></summary>

SDE-1 rounds check that you can write correct code and explain the fundamentals. SDE-2 rounds expect the same code faster, plus performance, deeper React and usually a frontend system design round. See [SDE-1 vs SDE-2 vs senior vs staff](https://uiround.com/guides/sde-1-vs-sde-2-vs-senior-vs-staff-frontend).

</details>

<details>
<summary><b>Is DSA asked in SDE-1 frontend interviews?</b></summary>

Often, as one round or as part of the online test: easy and medium problems on arrays, strings, hash maps, stacks and trees, solved in JavaScript. Big-tech loops ask more of it.

</details>

---

Other levels: [College students and freshers](college-students-and-freshers.md) · [SDE-2](sde-2-frontend-interview.md) · [SDE-3 and senior](sde-3-senior-frontend-interview.md) · [FAANG](faang-frontend-interview.md) · [All levels](README.md)
