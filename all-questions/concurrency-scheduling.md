# Concurrency & scheduling interview questions

Pools, queues, rate limiters and batching with bounded concurrency. Every question in UIRound's Concurrency & scheduling track, easiest first, each linking straight to the browser editor with tests.

| Question | Level | Format | Time | Access |
| --- | --- | --- | --- | --- |
| [Implement mapLimit() / throttlePromises() with maximum N concurrent tasks](https://uiround.com/questions/implement-maplimit-throttlepromises-with-maximum-n) | Medium | Coding | 35 min | **Free** · [read here](../questions/concurrency-scheduling/046-implement-maplimit-throttlepromises-with-maximum-n.md) |
| [Implement promisePool() using worker loops](https://uiround.com/questions/implement-promisepool-using-worker-loops) | Medium | Coding | 35 min | Pro |
| [Implement an asynchronous task runner with configurable concurrency](https://uiround.com/questions/implement-an-asynchronous-task-runner-with-configurable) | Medium | Coding | 35 min | Pro |
| [Implement a priority-based task scheduler](https://uiround.com/questions/implement-a-priority-based-task-scheduler) | Medium | Coding | 35 min | Pro |
| [Implement a queue supporting pause, resume, and clear](https://uiround.com/questions/implement-a-queue-supporting-pause-resume-and-clear) | Medium | Coding | 35 min | Pro |
| [Implement a token-bucket API rate limiter](https://uiround.com/questions/implement-a-token-bucket-api-rate-limiter) | Medium | Coding | 35 min | **Free** · [read here](../questions/concurrency-scheduling/051-implement-a-token-bucket-api-rate-limiter.md) |
| [Implement a sliding-window rate limiter](https://uiround.com/questions/implement-a-sliding-window-rate-limiter) | Medium | Coding | 35 min | Pro |
| [Implement request deduplication for identical in-flight API calls](https://uiround.com/questions/implement-request-deduplication-for-identical-in-flight-api) | Medium | Coding | 35 min | Pro |
| [Implement a concurrency-safe async cache with TTL](https://uiround.com/questions/implement-a-concurrency-safe-async-cache-with-ttl) | Medium | Coding | 35 min | **Free** · [read here](../questions/concurrency-scheduling/054-implement-a-concurrency-safe-async-cache-with-ttl.md) |
| [Implement batch API calls with maximum batch size and interval](https://uiround.com/questions/implement-batch-api-calls-with-maximum-batch-size-and) | Medium | Coding | 35 min | Pro |
| [Stream NDJSON from fetch and handle rows split across chunks](https://uiround.com/questions/stream-ndjson-from-fetch-and-handle-rows-split-across-chunks) | Medium | Coding | 30 min | Pro |
| [Build a WebSocket client with reconnect, backoff, heartbeat and an offline send queue](https://uiround.com/questions/build-a-websocket-client-with-reconnect-backoff-heartbeat-and-an-offline-send-queue) | Medium | Coding | 45 min | Pro |
| [Build a drift-free setInterval on top of setTimeout](https://uiround.com/questions/build-a-drift-free-setinterval-on-top-of-settimeout) | Medium | Coding | 25 min | Pro |
| [Parse a Server-Sent Events stream and resume with Last-Event-ID](https://uiround.com/questions/parse-a-server-sent-events-stream-and-resume-with-last-event-id) | Medium | Coding | 40 min | Pro |
| [Build a requestIdleCallback polyfill with deadlines, timeouts and cancellation](https://uiround.com/questions/build-a-requestidlecallback-polyfill-with-deadlines-timeouts-and-cancellation) | Medium | Coding | 35 min | Pro |
| [Build a job queue with retries, exponential backoff and a dead-letter list](https://uiround.com/questions/build-a-job-queue-with-retries-exponential-backoff-and-a-dead-letter-list) | Medium | Coding | 35 min | Pro |
| [Build an async read-write lock: many readers or one writer, with writer preference](https://uiround.com/questions/build-an-async-read-write-lock-many-readers-or-one-writer-with-writer-preference) | Medium | Coding | 35 min | Pro |
| [Build a keyed serial queue: in order per key, in parallel across keys](https://uiround.com/questions/build-a-keyed-serial-queue-in-order-per-key-in-parallel-across-keys) | Medium | Coding | 35 min | Pro |
| [Build a countdown latch and a cyclic barrier for async tasks](https://uiround.com/questions/build-a-countdown-latch-and-a-cyclic-barrier-for-async-tasks) | Medium | Coding | 35 min | Pro |
| [Build an interval scheduler with jitter that catches up missed runs without a burst](https://uiround.com/questions/build-an-interval-scheduler-with-jitter-that-catches-up-missed-runs-without-a-burst) | Medium | Coding | 35 min | Pro |
| [Build an async.queue-style task queue and a two-at-a-time FIFO or LIFO callback queue](https://uiround.com/questions/build-an-async-queue-style-task-queue-and-a-two-at-a-time-fifo-or-lifo-callback-queue) | Medium | Coding | 45 min | **Free** · [read here](../questions/concurrency-scheduling/739-build-an-async-queue-style-task-queue-and-a-two-at-a-time-fifo-or-lifo-callback-queue.md) |
| [Build a QPS tracker: hits per second and the average over the last 5 minutes](https://uiround.com/questions/build-a-qps-tracker-hits-per-second-and-the-average-over-the-last-5-minutes) | Medium | Coding | 30 min | Pro |
| [Build a hover-intent prefetch scheduler: delay, cancel on leave, concurrency and byte budget, and Save-Data](https://uiround.com/questions/build-a-hover-intent-prefetch-scheduler-delay-cancel-on-leave-concurrency-and-byte-budget-and-save-data) | Medium | Coding | 40 min | Pro |
| [Build a task queue with K workers, task ids, success and error callbacks and a pluggable executor](https://uiround.com/questions/build-a-task-queue-with-k-workers-task-ids-success-and-error-callbacks-and-a-pluggable-executor) | Medium | Coding | 45 min | Pro |
| [Wrap an API function so it runs at most limit times per minute, queuing extra calls in order](https://uiround.com/questions/wrap-an-api-function-so-it-runs-at-most-limit-times-per-minute-queuing-extra-calls-in-order) | Medium | Coding | 40 min | Pro |
| [Build a resource pool: acquire() and release() with a maximum size, a wait queue and timeouts](https://uiround.com/questions/build-a-resource-pool-acquire-and-release-with-a-maximum-size-a-wait-queue-and-timeouts) | Medium | Coding | 50 min | Pro |
| [Build Vue's update scheduler: queueJob dedupe, id-sorted flushes, post-flush callbacks and nextTick](https://uiround.com/questions/build-vues-update-scheduler-queuejob-dedupe-id-sorted-flushes-post-flush-callbacks-and-nexttick) | Medium | Coding | 40 min | Pro |
| [Build RxJS time operators on a virtual scheduler: debounceTime, throttleTime, delay and takeUntil](https://uiround.com/questions/build-rxjs-time-operators-on-a-virtual-scheduler-debouncetime-throttletime-delay-and-takeuntil) | Medium | Coding | 40 min | Pro |

---

Every question opens on [UIRound](https://uiround.com) with the problem, starter code and tests in a browser editor. Questions marked **Free** have the full answer free; the rest are part of [Pro](https://uiround.com/pricing), and their problem statement is free to read.

[All tracks](README.md) · [Free questions with answers](../README.md#free-questions) · [Guides by level](../prepare/README.md) · [UIRound](https://uiround.com)
