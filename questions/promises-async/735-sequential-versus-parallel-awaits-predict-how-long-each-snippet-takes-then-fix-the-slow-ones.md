# Sequential versus parallel awaits: predict how long each snippet takes, then fix the slow ones

**Track:** Promises & async  
**Level:** Medium  
**Time:** about 30 minutes  

**[Solve it in the browser with tests](https://uiround.com/questions/sequential-versus-parallel-awaits-predict-how-long-each-snippet-takes-then-fix-the-slow-ones)**: free, no account needed.

## Problem

"`A()` resolves to 2 after 200 ms and `B()` resolves to 3 after 300 ms. Add the results. How long does your code take?" Variants of this have been reported in public interview write-ups, together with "how long does this `for` loop of awaits take, and how do you make it faster?". The skill being tested is seeing **when each promise starts**, not when it is awaited.

**Part 1: predict the time.** Each snippet gets these helpers. Every call starts a new timer:

- `A()` resolves to `2` after **200 ms**; `B()` resolves to `3` after **300 ms**.
- `fetchItem(id)` resolves to `id * 10` after **100 ms**.

For each snippet, fill `answers.a` … `answers.j` with the number of milliseconds from the start of the snippet until the promise it returns settles. Ignore the few microseconds that synchronous code takes.

```js
// a
async ({ A, B }) => {
  const a = await A();
  const b = await B();
  return a + b;
};

// b
async ({ A, B }) => {
  const [a, b] = await Promise.all([A(), B()]);
  return a + b;
};

// c
async ({ A, B }) => {
  const pa = A();
  const pb = B();
  return (await pa) + (await pb);
};

// d
async ({ fetchItem }) => {
  const out = [];
  for (const id of [1, 2, 3]) out.push(await fetchItem(id));
  return out;
};

// e
async ({ fetchItem }) => {
  const out = [];
  [1, 2, 3].forEach(async (id) => out.push(await fetchItem(id)));
  return out;
};

// f
async ({ fetchItem }) => Promise.all([1, 2, 3].map(fetchItem));

// g
async ({ fetchItem }) =>
  [1, 2, 3].reduce(async (accPromise, id) => {
    const acc = await accPromise;
    return acc + (await fetchItem(id));
  }, 0);

// h
async ({ fetchItem }) =>
  [1, 2, 3].reduce(async (accPromise, id) => {
    const value = await fetchItem(id);
    return (await accPromise) + value;
  }, 0);

// i
async ({ A, B }) => {
  await A();
  await Promise.all([B(), A()]);
};

// j
async ({ A, B }) => {
  const pb = B();
  await A();
  await A();
  return pb;
};
```

**Part 2: write the fast and the slow version on purpose.** `A`, `B` and `fetchItem` are passed in.

- **`sumSequential(A, B)`**: start `B` only after `A` has resolved; resolve to the sum.
- **`sumParallel(A, B)`**: start both at once; resolve to the sum. If either rejects, reject with that error.
- **`loadOneByOne(ids, fetchItem)`**: fetch one id at a time, in order; resolve to the results in input order.
- **`loadAll(ids, fetchItem)`**: start every fetch at once; resolve to the results in **input** order, even when later ids finish first.

## Starter code

```js
const answers = {
  a: null,
  b: null,
  c: null,
  d: null,
  e: null,
  f: null,
  g: null,
  h: null,
  i: null,
  j: null,
};

async function sumSequential(A, B) {
  // Your code here
}

async function sumParallel(A, B) {
  // Your code here
}

async function loadOneByOne(ids, fetchItem) {
  // Your code here
}

async function loadAll(ids, fetchItem) {
  // Your code here
}
```

## Hints

<details><summary>Hint 1</summary>

Which line starts the timer: the call or the `await`? Mark when each promise is created, then when you wait for it.

</details>

<details><summary>Hint 2</summary>

Delays add when each call waits for the previous one, but overlap when all are started first. A loop of awaits is the sequential case; start all promises, then wait for them together.

</details>

<details><summary>Hint 3</summary>

The usual trap is a promise created before an earlier `await`, or an `await` inside a `forEach` or `map` callback. For `loadAll`, keep results in input order, not completion order.

</details>

## Solution

The full answer is free on UIRound: [Sequential versus parallel awaits: predict how long each snippet takes, then fix the slow ones](https://uiround.com/questions/sequential-versus-parallel-awaits-predict-how-long-each-snippet-takes-then-fix-the-slow-ones). It has a tested solution, a step-by-step explanation, edge cases, follow-up questions with model answers, and the tests to run your own code against.

Found a mistake in this question? [Report it](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml&title=%5BQuestion%20735%5D%20).
