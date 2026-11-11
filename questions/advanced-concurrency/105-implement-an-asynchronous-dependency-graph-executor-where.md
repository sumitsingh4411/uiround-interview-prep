# Implement an asynchronous dependency graph executor where tasks run only after their dependencies complete

**Track:** Advanced async concurrency  
**Level:** Hard  
**Time:** about 60 minutes  

**[Solve it in the browser with tests](https://uiround.com/questions/implement-an-asynchronous-dependency-graph-executor-where)**: free, no account needed.

## Problem

Build systems, app start-up sequences and data loaders all run tasks that depend on other tasks. Implement `runGraph(tasks, { concurrency = Infinity } = {})`:

```js
const results = await runGraph({
  config: { deps: [], run: () => loadConfig() },
  user: { deps: ["config"], run: ({ config }) => fetchUser(config.apiUrl) },
  flags: { deps: ["config"], run: ({ config }) => fetchFlags(config.apiUrl) },
  app: { deps: ["user", "flags"], run: ({ user, flags }) => startApp(user, flags) },
});
// user and flags run in parallel, after config, before app
```

- Each task's `run(depResults)` receives an object with the results of its dependencies and may be async.
- A task starts **as soon as** all its dependencies have finished; independent tasks run in parallel, up to `concurrency` at a time.
- Before running anything, validate the graph: a dependency that does not exist throws `Error('Unknown dependency "x" in task "y"')`; a cycle throws an `Error` whose message contains the cycle path, for example `Cycle detected: a -> b -> c -> a`.
- If a task fails, start no new tasks and reject with an error whose message names the task and includes the original message, with the original as `cause`. Tasks already running may finish.
- Resolve with an object of every task's result.

## Starter code

```js
async function runGraph(tasks, { concurrency = Infinity } = {}) {
  // Your code here
}
```

## Hints

<details><summary>Hint 1</summary>

Before running anything, ask whether the task graph is even runnable. What kinds of bad input could make some task wait forever?

</details>

<details><summary>Hint 2</summary>

Validate, then do an event-driven topological sort: track how many dependencies each task still waits on, and release dependents when a finished task drops them to zero.

</details>

<details><summary>Hint 3</summary>

Report unknown dependencies and the full cycle path before starting any task. On failure, start nothing new, reject with a message naming the task and keep the original as `cause`. Honour the concurrency cap.

</details>

## Solution

The full answer is free on UIRound: [Implement an asynchronous dependency graph executor where tasks run only after their dependencies complete](https://uiround.com/questions/implement-an-asynchronous-dependency-graph-executor-where). It has a tested solution, a step-by-step explanation, edge cases, follow-up questions with model answers, and the tests to run your own code against.

Found a mistake in this question? [Report it](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml&title=%5BQuestion%20105%5D%20).
