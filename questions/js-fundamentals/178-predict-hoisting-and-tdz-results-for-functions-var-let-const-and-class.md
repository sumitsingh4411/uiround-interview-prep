# Predict hoisting and TDZ results for functions, var, let, const and class

**Track:** JavaScript fundamentals  
**Level:** Easy  
**Time:** about 15 minutes  

**[Solve it in the browser with tests](https://uiround.com/questions/predict-hoisting-and-tdz-results-for-functions-var-let-const-and-class)**: free, no account needed.

## Problem

Read each snippet and write down exactly what it logs, **without running it**. When a line throws, the snippet logs the error's `name` instead (for example `"ReferenceError"`). Fill in `answers.a` to `answers.d` with the logged strings, in order.

```js
// Snippet A
function snippetA(log) {
  log(typeof hoisted);
  log(typeof notYet);
  log(String(count));
  var count = 1;
  var notYet = function () {};
  function hoisted() {}
  log(typeof notYet);
  log(String(count));
}

// Snippet B
function snippetB(log) {
  try { log(String(a)); } catch (e) { log(e.name); }
  let a = 1;
  try { new Point(); } catch (e) { log(e.name); }
  class Point {}
  log(typeof neverDeclared);
  try { log(typeof b); } catch (e) { log(e.name); }
  let b = 2;
}

// Snippet C
function snippetC(log) {
  var value = "outer";
  function show() {
    log(String(value));
    var value = "inner";
    log(value);
  }
  show();
  log(typeof greet);
  var greet = 1;
  function greet() {}
  log(typeof greet);
}

// Snippet D
function snippetD(log) {
  const total = (a = b, b = 2) => a + b;
  try { total(); } catch (e) { log(e.name); }
  log(String(total(1)));
  let x = 1;
  {
    try { log(String(x)); } catch (e) { log(e.name); }
    let x = 2;
    log(String(x));
  }
}
```

Then be ready to explain each answer with one rule.

## Starter code

```js
const answers = {
  a: [],
  b: [],
  c: [],
  d: [],
};
```

## Hints

<details><summary>Hint 1</summary>

For each scope, list every declaration first and ask what state it is in at the top of the function, before any line runs.

</details>

<details><summary>Hint 2</summary>

Function declarations are fully ready, `var` starts as `undefined`, and `let`, `const`, `class` are uninitialized until their line. Walk lines in order and update values as assignments execute.

</details>

<details><summary>Hint 3</summary>

Watch Snippet C, where a local `var` shadows an outer one for the whole function, and Snippet D, where default parameters and an inner block each have their own temporal dead zone.

</details>

## Solution

The full answer is free on UIRound: [Predict hoisting and TDZ results for functions, var, let, const and class](https://uiround.com/questions/predict-hoisting-and-tdz-results-for-functions-var-let-const-and-class). It has a tested solution, a step-by-step explanation, edge cases, follow-up questions with model answers, and the tests to run your own code against.

Found a mistake in this question? [Report it](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml&title=%5BQuestion%20178%5D%20).
