# Build an async.queue-style task queue and a two-at-a-time FIFO or LIFO callback queue

**Track:** Concurrency & scheduling  
**Level:** Medium  
**Time:** about 45 minutes  

**[Solve it in the browser with tests](https://uiround.com/questions/build-an-async-queue-style-task-queue-and-a-two-at-a-time-fifo-or-lifo-callback-queue)**: free, no account needed.

## Problem

Two versions of the same idea, a queue that runs only a few tasks at a time, have been reported in public interview write-ups. Question 46 limits concurrency for a fixed list; here tasks can arrive **at any time**, and the queue reports progress through callbacks. Build both.

### Part 1: `queue(processorFn, onCompleteFn, concurrency = 1)`

`processorFn(task, done)` does the work for one task and calls `done(error, result)` when finished. The queue returns an object:

- **`push(task | tasks, cb?)`**: add one task, or each task of an array, to the **back**. `cb(error, result)` is called when that task finishes (once per task for an array).
- **`unshift(task | tasks, cb?)`**: like `push`, but add to the **front**. An array keeps its order: `unshift([x, y])` runs `x` before `y`.
- **`drain(fn)`**: register `fn`, called every time the queue becomes idle (nothing waiting, nothing running) after running tasks.
- **`error(fn)`**: register `fn(error, task)`, called whenever a task fails.
- **`length()`** (tasks waiting), **`running()`** (tasks in progress) and **`idle()`**.

Rules:

- Never run more than `concurrency` tasks at once. Start the next task as soon as one finishes.
- Tasks start in a **microtask** after `push` or `unshift`, not synchronously, so tasks added in the same synchronous block are queued before any start. That is what makes `unshift` meaningful right after a `push`.
- When a task finishes, call in this order: its `cb`, then `onCompleteFn(error, result, task)` (if given), then the `error` handlers if it failed. A failure does not stop the queue.
- If `processorFn` throws synchronously, treat it as `done(error)`. If it calls `done` more than once, ignore the extra calls.
- `concurrency` must be a positive integer (`RangeError`); `processorFn` must be a function (`TypeError`).

### Part 2: `class QueueCallbacks`

- `new QueueCallbacks(mode = "FIFO", limit = 2)`: `mode` is `"FIFO"` or `"LIFO"` (anything else is a `RangeError`).
- **`process(asyncFn)`**: if fewer than `limit` functions are running, call `asyncFn()` **right away** (synchronously). Otherwise queue it. Return a promise that settles like `asyncFn`'s result.
- When a running function settles (either way), its slot takes the next queued function: the **oldest** in FIFO mode, the **newest** in LIFO mode.
- Getters **`running`** and **`pending`** report the counts.

```js
const q = queue((task, done) => setTimeout(() => done(null, task * 2), 10), null, 2);
q.drain(() => console.log("all done"));
q.push([1, 2, 3], (error, result) => console.log(result)); // 2, 4, 6, then "all done"
```

## Starter code

```js
function queue(processorFn, onCompleteFn, concurrency = 1) {
  // Your code here
}

class QueueCallbacks {
  constructor(mode = "FIFO", limit = 2) {
    // Your code here
  }

  process(asyncFn) {
    // Your code here
  }

  get running() {
    // Your code here
  }

  get pending() {
    // Your code here
  }
}
```

## Hints

<details><summary>Hint 1</summary>

Separate three things: waiting tasks, running tasks, and what happens when one finishes. Starting new work is triggered by finishing.

</details>

<details><summary>Hint 2</summary>

Keep a waiting list and a running count; a scheduler starts tasks while running is below concurrency. Start them in a microtask so tasks added in one synchronous block are queued first.

</details>

<details><summary>Hint 3</summary>

`unshift` of an array must keep its internal order, callbacks fire in the specified order (task cb, then the complete handler), and `drain` fires only when nothing is waiting or running.

</details>

## Solution

The full answer is free on UIRound: [Build an async.queue-style task queue and a two-at-a-time FIFO or LIFO callback queue](https://uiround.com/questions/build-an-async-queue-style-task-queue-and-a-two-at-a-time-fifo-or-lifo-callback-queue). It has a tested solution, a step-by-step explanation, edge cases, follow-up questions with model answers, and the tests to run your own code against.

Found a mistake in this question? [Report it](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml&title=%5BQuestion%20739%5D%20).
