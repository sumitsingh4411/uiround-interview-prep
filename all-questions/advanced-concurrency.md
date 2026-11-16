# Advanced async concurrency interview questions

Schedulers, cancellation, backpressure and resilience patterns. Every question in UIRound's Advanced async concurrency track, easiest first, each linking straight to the browser editor with tests.

| Question | Level | Format | Time | Access |
| --- | --- | --- | --- | --- |
| [Implement a Promise library with .then(), .catch(), chaining, and asynchronous handler scheduling](https://uiround.com/questions/implement-a-promise-library-with-then-catch-chaining-and) | Hard | Coding | 60 min | **Free** · [read here](../questions/advanced-concurrency/101-implement-a-promise-library-with-then-catch-chaining-and.md) |
| [Implement a task scheduler with concurrency limits, priorities, cancellation, and starvation prevention](https://uiround.com/questions/implement-a-task-scheduler-with-concurrency-limits) | Hard | Coding | 60 min | **Free** · [read here](../questions/advanced-concurrency/102-implement-a-task-scheduler-with-concurrency-limits.md) |
| [Implement a mapLimit() with AbortSignal, ordered results, and configurable error-handling policies](https://uiround.com/questions/implement-a-maplimit-with-abortsignal-ordered-results-and) | Hard | Coding | 60 min | Pro |
| [Implement asyncMap() over an async iterable with bounded concurrency and backpressure](https://uiround.com/questions/implement-asyncmap-over-an-async-iterable-with-bounded) | Hard | Coding | 60 min | Pro |
| [Implement an asynchronous dependency graph executor where tasks run only after their dependencies complete](https://uiround.com/questions/implement-an-asynchronous-dependency-graph-executor-where) | Hard | Coding | 60 min | **Free** · [read here](../questions/advanced-concurrency/105-implement-an-asynchronous-dependency-graph-executor-where.md) |
| [Implement a circuit breaker with CLOSED, OPEN, and HALF_OPEN states](https://uiround.com/questions/implement-a-circuit-breaker-with-closed-open-and-half-open) | Hard | Coding | 60 min | Pro |
| [Implement a distributed-style API client rate limiter coordinating multiple browser tabs](https://uiround.com/questions/implement-a-distributed-style-api-client-rate-limiter) | Hard | Coding | 60 min | Pro |
| [Implement a single-flight token refresh mechanism: 10 failed requests trigger only one refresh, followed by safe retries](https://uiround.com/questions/implement-a-single-flight-token-refresh-mechanism-10-failed) | Hard | Coding | 60 min | **Free** · [read here](../questions/advanced-concurrency/108-implement-a-single-flight-token-refresh-mechanism-10-failed.md) |
| [Implement a streaming upload manager supporting chunking, bounded concurrency, progress, retry, and cancellation](https://uiround.com/questions/implement-a-streaming-upload-manager-supporting-chunking) | Hard | Coding | 60 min | Pro |
| [Implement a resilient polling engine with exponential backoff, visibility awareness, timeout, and cancellation](https://uiround.com/questions/implement-a-resilient-polling-engine-with-exponential) | Hard | Coding | 60 min | Pro |
| [Build a DataLoader that batches keys requested in the same tick and caches per key](https://uiround.com/questions/build-a-dataloader-that-batches-keys-requested-in-the-same-tick-and-caches-per-key) | Hard | Coding | 45 min | Pro |
| [Implement a text CRDT (RGA) for collaborative editing](https://uiround.com/questions/implement-a-text-crdt-rga-for-collaborative-editing) | Hard | Coding | 60 min | Pro |
| [Count events in event-time windows with watermarks and late events](https://uiround.com/questions/count-events-in-event-time-windows-with-watermarks-and-late-events) | Hard | Coding | 40 min | Pro |
| [Fan out one ReadableStream to fast and slow readers with bounded memory](https://uiround.com/questions/fan-out-one-readablestream-to-fast-and-slow-readers-with-bounded-memory) | Hard | Coding | 45 min | Pro |
| [Build a single-producer single-consumer ring buffer with Atomics](https://uiround.com/questions/build-a-single-producer-single-consumer-ring-buffer-with-atomics) | Hard | Coding | 40 min | Pro |
| [Build Go-style channels: unbuffered and buffered send and receive, close, async iteration and select](https://uiround.com/questions/build-go-style-channels-unbuffered-and-buffered-send-and-receive-close-async-iteration-and-select) | Hard | Coding | 60 min | Pro |
| [Run a saga: ordered steps, compensations in reverse, failed compensations and abort](https://uiround.com/questions/run-a-saga-ordered-steps-compensations-in-reverse-failed-compensations-and-abort) | Hard | Coding | 45 min | Pro |
| [Build a time-sliced task runner with priority lanes, cancellation and starvation protection](https://uiround.com/questions/build-a-time-sliced-task-runner-with-priority-lanes-cancellation-and-starvation-protection) | Hard | Coding | 60 min | Pro |
| [Implement structured concurrency with withTaskGroup: shared cancellation, first error, cleanup and parent abort](https://uiround.com/questions/implement-structured-concurrency-with-withtaskgroup-shared-cancellation-first-error-cleanup-and-parent-abort) | Hard | Coding | 50 min | Pro |
| [Implement switchMap, concatMap and exhaustMap for async request streams](https://uiround.com/questions/implement-switchmap-concatmap-and-exhaustmap-for-async-request-streams) | Hard | Coding | 55 min | Pro |
| [Save with optimistic concurrency: versioned updates, 409 and 412 conflicts, and a three-way JSON merge](https://uiround.com/questions/save-with-optimistic-concurrency-versioned-updates-409-and-412-conflicts-and-a-three-way-json-merge) | Hard | Coding | 60 min | Pro |
| [Build an async queue with high and low watermarks and backpressure](https://uiround.com/questions/build-an-async-queue-with-high-and-low-watermarks-and-backpressure) | Hard | Coding | 60 min | Pro |
| [Build an earliest-deadline-first job scheduler with preemption at yield points](https://uiround.com/questions/build-an-earliest-deadline-first-job-scheduler-with-preemption-at-yield-points) | Hard | Coding | 60 min | Pro |
| [Implement combineLatest, zip and withLatestFrom over async iterables](https://uiround.com/questions/implement-combinelatest-zip-and-withlatestfrom-over-async-iterables) | Hard | Coding | 60 min | Pro |
| [Send hedged requests with a retry budget: a backup after a delay, and cancel the loser](https://uiround.com/questions/send-hedged-requests-with-a-retry-budget-a-backup-after-a-delay-and-cancel-the-loser) | Hard | Coding | 60 min | Pro |
| [Orchestrate an AI agent's tool calls as a DAG: parallel calls, outputs passed to dependants, timeouts and cancellation](https://uiround.com/questions/orchestrate-an-ai-agent-s-tool-calls-as-a-dag-parallel-calls-outputs-passed-to-dependants-timeouts-and-cancellation) | Hard | Coding | 55 min | Pro |
| [Build a redux-saga-style effect runner: take, put, call, select, fork, cancel and takeLatest](https://uiround.com/questions/build-a-redux-saga-style-effect-runner-take-put-call-select-fork-cancel-and-takelatest) | Hard | Coding | 75 min | Pro |
| [Install Jest-style fake timers on the global: patch setTimeout and Date, runOnlyPendingTimers and async advancing](https://uiround.com/questions/install-jest-style-fake-timers-on-the-global-patch-settimeout-and-date-runonlypendingtimers-and-async-advancing) | Hard | Coding | 55 min | Pro |
| [Implement RxJS switchMap, mergeMap, concatMap and exhaustMap with correct completion and teardown](https://uiround.com/questions/implement-rxjs-switchmap-mergemap-concatmap-and-exhaustmap-with-correct-completion-and-teardown) | Hard | Coding | 55 min | Pro |
| [Implement RxJS combineLatest, withLatestFrom, forkJoin, zip and race with exact completion rules](https://uiround.com/questions/implement-rxjs-combinelatest-withlatestfrom-forkjoin-zip-and-race-with-exact-completion-rules) | Hard | Coding | 55 min | Pro |
| [Build webpack's chunk loader: deduped loads, dependency chunks, retries with backoff and timeouts](https://uiround.com/questions/build-webpacks-chunk-loader-deduped-loads-dependency-chunks-retries-with-backoff-and-timeouts) | Hard | Coding | 55 min | Pro |

---

Every question opens on [UIRound](https://uiround.com) with the problem, starter code and tests in a browser editor. Questions marked **Free** have the full answer free; the rest are part of [Pro](https://uiround.com/pricing), and their problem statement is free to read.

[All tracks](README.md) · [Free questions with answers](../README.md#free-questions) · [Guides by level](../prepare/README.md) · [UIRound](https://uiround.com)
