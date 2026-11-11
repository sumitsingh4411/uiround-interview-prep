# Implement an analytics SDK with event batching and sendBeacon fallback

**Track:** Browser, network & performance  
**Level:** Medium  
**Time:** about 45 minutes  

**[Solve it in the browser with tests](https://uiround.com/questions/implement-an-analytics-sdk-with-event-batching-and)**: free, no account needed.

## Problem

Implement `createAnalytics({ endpoint, batchSize = 10, flushInterval = 5000, maxQueue = 500, transport, target = window, doc = document })` returning `{ track(name, props), flush(), destroy(), queueSize }`.

- `track` adds `{ id, name, props, ts }` to a queue (`id` from `crypto.randomUUID()`, `ts` from `Date.now()`).
- The queue is sent as one request when it reaches `batchSize`, and at least every `flushInterval` ms while it is not empty.
- Normal sends use `transport.fetch(endpoint, { method: "POST", body, keepalive: true, headers })` with a JSON body `{ events: [...] }`. If it fails (network error or non-2xx), put the events **back** at the front of the queue so they are sent next time.
- When the page is being hidden or unloaded (`visibilitychange` with `doc.visibilityState === "hidden"`, or `pagehide` on `target`), flush with `transport.sendBeacon(endpoint, blob)`. If `sendBeacon` returns `false` (or is missing), fall back to the `keepalive` fetch.
- The queue never holds more than `maxQueue` events; drop the **oldest** when it overflows.
- `destroy()` stops the timer and removes the listeners.

`transport` defaults to `{ fetch: window.fetch.bind(window), sendBeacon: navigator.sendBeacon?.bind(navigator) }`; tests pass fakes.

## Starter code

```js
function createAnalytics({ endpoint, batchSize = 10, flushInterval = 5000, maxQueue = 500, transport, target = window, doc = document }) {
  // Your code here
}
```

## Hints

<details><summary>Hint 1</summary>

Sending one request per event is wasteful, and a page can disappear at any moment. Think about when events leave the queue.

</details>

<details><summary>Hint 2</summary>

Buffer events and flush on size, on a timer and when the page is hidden. Use `sendBeacon` for page exit and `fetch` with `keepalive` otherwise.

</details>

<details><summary>Hint 3</summary>

Take the batch out of the queue before sending and put it back at the front on failure. If `sendBeacon` returns `false`, fall back to fetch, and drop the oldest events beyond `maxQueue`.

</details>

## Solution

The full answer is free on UIRound: [Implement an analytics SDK with event batching and sendBeacon fallback](https://uiround.com/questions/implement-an-analytics-sdk-with-event-batching-and). It has a tested solution, a step-by-step explanation, edge cases, follow-up questions with model answers, and the tests to run your own code against.

Found a mistake in this question? [Report it](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml&title=%5BQuestion%2094%5D%20).
