# Implement a task scheduler with concurrency limits, priorities, cancellation, and starvation prevention

**Track:** Advanced async concurrency  
**Level:** Hard  
**Time:** about 60 minutes

**[Solve it in the browser with tests](https://uiround.com/questions/implement-a-task-scheduler-with-concurrency-limits)**: free, no account needed.

## Problem

Implement `class Scheduler`:

```js
const scheduler = new Scheduler({ concurrency: 2, agingMs: 1000, now: Date.now });
const result = await scheduler.schedule(({ signal }) => fetch(url, { signal }), { priority: 5, signal });
```

- `schedule(task, { priority = 0, signal } = {})` returns a promise for the task's result. `task` receives `{ signal }`.
- At most `concurrency` tasks run at once. When a slot frees, the waiting task with the highest **effective priority** starts.
- **Starvation prevention (aging):** effective priority = `priority + waitedMs / agingMs`. A low-priority task that has waited long enough eventually beats newly scheduled high-priority tasks. Ties go to the task scheduled first.
- **Cancellation:** if `signal` aborts while the task is **waiting**, remove it and reject with `signal.reason` without running it. If `signal` is already aborted, reject immediately. If it aborts while the task is **running**, the task sees it through its own `signal` (pass it on to `fetch` and friends); the scheduler rejects with `signal.reason` at once and frees the slot.
- `size` (waiting) and `running` counts.

`now` is injectable so tests can control time.

## Starter code

```js
class Scheduler {
  constructor({ concurrency = 1, agingMs = 1000, now = Date.now } = {}) {
    // Your code here
  }

  get size() {}
  get running() {}

  schedule(task, { priority = 0, signal } = {}) {}
}
```

## Hints

<details><summary>Hint 1</summary>

There are two competing concerns: limiting how many tasks run, and deciding which waiting task goes next. Handle them separately.

</details>

<details><summary>Hint 2</summary>

Keep a waiting list and a pump that fills free slots. Pick the next job at that moment by scoring priority plus waited time over `agingMs`.

</details>

<details><summary>Hint 3</summary>

Cancelling a running task must reject immediately and free its slot exactly once, even though the task itself finishes later. An already-aborted signal rejects at once. Remove abort listeners when done.

</details>

## Solution

The full answer is free on UIRound: [Implement a task scheduler with concurrency limits, priorities, cancellation, and starvation prevention](https://uiround.com/questions/implement-a-task-scheduler-with-concurrency-limits). It has a tested solution, a step-by-step explanation, edge cases, follow-up questions with model answers, and the tests to run your own code against.

Found a mistake in this question? [Report it](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml&title=%5BQuestion%20102%5D%20).
