# Work out when scripts run: classic, async, defer, module and inline scripts against the parser

**Track:** Browser, network & performance  
**Level:** Medium  
**Time:** about 45 minutes  

**[Solve it in the browser with tests](https://uiround.com/questions/work-out-when-scripts-run-classic-async-defer-module-and-inline-scripts-against-the-parser)**: free, no account needed.

## Problem

"Where should the `<script>` tag go, and what do `async` and `defer` change?" is a standard question. Answer it precisely by writing a small simulator of the main thread: `scriptRunOrder(items)` returns when each script runs, when `DOMContentLoaded` fires and when `load` fires.

`items` is the page in document order. Each item is either:

- `{ parse: ms }`: the parser spends `ms` milliseconds on a chunk of HTML. A chunk is never interrupted.
- a script: `{ id, src = false, module = false, async = false, defer = false, loadMs = 0, runMs = 0 }`. `src: true` means an external file whose download finishes at time `loadMs`; all downloads start at time 0 (the browser's preload scanner finds them early). `runMs` is how long the script runs on the main thread.

**How each script behaves**

| Script | Behaviour |
| --- | --- |
| Inline classic (`src: false`, `module: false`) | Runs as soon as the parser reaches it. `async` and `defer` are ignored. |
| External classic, neither `async` nor `defer` | **Blocks the parser**: waits for its download, runs, then parsing continues. |
| Any script with `async` (external classic, or a module) | Runs as soon as it is **ready**, without blocking the parser. `async` wins over `defer`. |
| External classic with `defer`, and every module without `async` (inline or external) | **Deferred**: runs after parsing has finished, in document order, each once it is ready. |

A script is **ready** at `max(time its download finished, time the parser reached its tag)`; an inline script's download time is irrelevant, so it is ready when its tag is reached.

**Rules for the main thread** (one clock, starting at 0):

1. Whenever the main thread picks its next piece of work (the next item, a deferred script, or `DOMContentLoaded`), it first runs every **async script that is ready** at that moment, earliest ready time first, then document order. Running one can make others ready.
2. When it has to wait for a download (a parser-blocking script or a deferred script), it runs async scripts as they become ready during the wait, then continues at the end of the wait (or later, if an async script was still running).
3. After the last item, deferred scripts run in document order. Then `DOMContentLoaded` fires (rule 1 applies first). Then the remaining async scripts run as they become ready, and `load` fires after the last one.

Return an array of `{ id, at }` in the order things happen, where `at` is the start time; the two events use the ids `"DOMContentLoaded"` and `"load"` and take no time. Throw an `Error` if two scripts share an id or a script uses one of those two event names.

```js
scriptRunOrder([
  { parse: 5 },
  { id: "analytics", src: true, async: true, loadMs: 20, runMs: 4 },
  { id: "app", src: true, defer: true, loadMs: 40, runMs: 10 },
  { id: "config", runMs: 1 },
  { id: "jquery", src: true, loadMs: 30, runMs: 6 },
  { parse: 20 },
  { id: "widget", src: true, module: true, loadMs: 10, runMs: 3 },
  { parse: 5 },
]);
// [
//   { id: "config", at: 5 },             inline: runs when reached
//   { id: "analytics", at: 20 },         async: runs while the parser waits for jquery
//   { id: "jquery", at: 30 },            blocks the parser until it has downloaded
//   { id: "app", at: 61 },               deferred: after parsing, in document order
//   { id: "widget", at: 71 },            modules are deferred too
//   { id: "DOMContentLoaded", at: 74 },
//   { id: "load", at: 74 },
// ]
```

## Starter code

```js
function scriptRunOrder(items) {
  // Your code here
}
```

## Hints

<details><summary>Hint 1</summary>

First sort every script into one of four behaviours: runs right now (inline classic), blocks the parser (external classic), runs when ready (async), or runs after parsing in document order (defer and modules).

</details>

<details><summary>Hint 2</summary>

Keep one clock for the main thread. Before each piece of work, run every async script that is ready, earliest download first. When the main thread has to wait for a download, jump the clock to the next async script that becomes ready, or to the end of the wait.

</details>

<details><summary>Hint 3</summary>

A script is only known once the parser reaches its tag, so it is ready at max(download finished, tag reached). `async` beats `defer` when both are present, and `async`/`defer` do nothing on an inline classic script, but an inline module is still deferred.

</details>

## Solution

The full answer is free on UIRound: [Work out when scripts run: classic, async, defer, module and inline scripts against the parser](https://uiround.com/questions/work-out-when-scripts-run-classic-async-defer-module-and-inline-scripts-against-the-parser). It has a tested solution, a step-by-step explanation, edge cases, follow-up questions with model answers, and the tests to run your own code against.

Found a mistake in this question? [Report it](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml&title=%5BQuestion%201314%5D%20).
