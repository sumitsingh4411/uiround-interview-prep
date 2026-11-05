# JavaScript interview questions and answers

The questions interviewers open with, each with a short answer you can say out loud. Every question links to the full answer on [UIRound](https://uiround.com), with examples, comparisons and the follow-up questions that come next. Free, no account needed.

Practise the coding side with tests: [JavaScript interview questions and answers](https://uiround.com/interview-questions/javascript).

## Beginner

### for...in vs Object.keys vs Object.entries in JavaScript

`for...in` loops over every enumerable string key of an object, including keys inherited through the prototype chain. `Object.keys(obj)` returns an array of only the object's own enumerable string keys, and `Object.entries(obj)` returns own `[key, value]` pairs. None of them include symbol keys. In modern code, prefer `Object.keys` or `Object.entries` with `for...of` or array methods, and keep `for...in` for the rare case where inherited keys are wanted.

[Read the full answer](https://uiround.com/answers/for-in-vs-object-keys-vs-object-entries-in-javascript)

### for...of vs forEach: what is the difference?

`for...of` is a loop statement that works on any iterable (arrays, strings, Maps, Sets, NodeLists, generators) and supports `break`, `continue`, `return` and `await`. `forEach` is a method on arrays and some collections that calls a callback for each item; you cannot stop it early, and it does not wait for async callbacks. Use `for...of` for control flow or sequential `await`; either works for a simple pass.

[Read the full answer](https://uiround.com/answers/for-of-vs-foreach-what-is-the-difference)

### How are arrow functions different from regular functions?

Arrow functions are a shorter syntax with different behaviour. They have no `this`, `arguments` or `super` of their own and use those of the surrounding code. They cannot be called with `new`, have no `prototype`, and cannot be generators. Regular functions get their own `this` from how they are called.

[Read the full answer](https://uiround.com/answers/how-are-arrow-functions-different-from-regular-functions)

### How do you check if an object has a property in JavaScript?

Use `Object.hasOwn(obj, "key")` to check whether an object has its own property, and `"key" in obj` to check its own and inherited properties. Comparing `obj.key !== undefined` is not the same: it misses properties that exist but hold `undefined`. `Object.hasOwn` replaces the older `obj.hasOwnProperty("key")`, which fails on objects without a prototype or with a property named `hasOwnProperty`.

[Read the full answer](https://uiround.com/answers/how-do-you-check-if-an-object-has-a-property-in-javascript)

### map vs forEach vs filter vs reduce: when to use which?

Use `map` to turn each item into a new item, `filter` to keep only some items, `reduce` to combine all items into one value, and `forEach` to run a side effect for each item. `map` and `filter` return new arrays, `reduce` returns whatever you build, and `forEach` always returns `undefined`.

[Read the full answer](https://uiround.com/answers/map-vs-foreach-vs-filter-vs-reduce-when-to-use-which)

### What are array-like objects in JavaScript?

An array-like object is any object with a numeric `length` property and elements stored at indexes `0`, `1`, `2` and so on, but which is not a real `Array`. Examples are `arguments`, `NodeList`, `HTMLCollection` and strings. They can be read by index and looped over with a classic `for` loop, but most lack array methods like `map` and `filter`. Convert one with `Array.from()` when you need those methods.

[Read the full answer](https://uiround.com/answers/what-are-array-like-objects-in-javascript)

### What are higher-order functions in JavaScript?

A higher-order function is a function that takes another function as an argument, returns a function, or does both. It works because functions in JavaScript are first-class values: you can store them in variables, pass them around and return them. Array methods such as `map`, `filter` and `reduce` are the everyday examples.

[Read the full answer](https://uiround.com/answers/what-are-higher-order-functions-in-javascript)

### What are the most important ES6 features in JavaScript?

ES6, officially ECMAScript 2015, was the largest update to JavaScript. Its most important features are `let` and `const`, arrow functions, classes, template literals, destructuring, spread and rest syntax, default parameters, ES modules with `import` and `export`, promises, `Map` and `Set`, symbols, and iterators with generators and `for...of`. Together they replaced most ES5 workarounds such as `var` hoisting, `self = this` and IIFE modules.

[Read the full answer](https://uiround.com/answers/what-are-the-most-important-es6-features-in-javascript)

### What is a callback function, and what is callback hell?

A callback function is a function you pass as an argument to another function, which calls it later. Callbacks can run immediately, like in `map`, or after work finishes, like in `setTimeout`. Callback hell is the deep nesting that appears when each step of an asynchronous sequence starts inside the previous callback.

[Read the full answer](https://uiround.com/answers/what-is-a-callback-function-and-what-is-callback-hell)

### What is a closure in JavaScript?

A closure is a function together with the variables from the scope where it was created. In JavaScript every function keeps a live reference to its surrounding scope, so it can read and update those variables even after the outer function has returned. That is how private state, function factories, `once`, `debounce` and `memoize` work.

[Read the full answer](https://uiround.com/answers/what-is-a-closure-in-javascript)

### What is a Promise in JavaScript?

A Promise is an object that stands for the eventual result of an asynchronous operation. It starts as pending and settles once, either fulfilled with a value or rejected with a reason. You attach handlers with `then`, `catch` and `finally`, and they run later as microtasks, after the current code has finished.

[Read the full answer](https://uiround.com/answers/what-is-a-promise-in-javascript)

### What is destructuring in JavaScript?

Destructuring is syntax that unpacks values from an array or properties from an object into separate variables in one statement. Instead of reading `user.name` and `user.age` line by line, you write `const { name, age } = user`. It also works in function parameters, loops and `catch` clauses.

[Read the full answer](https://uiround.com/answers/what-is-destructuring-in-javascript)

### What is event delegation in JavaScript?

Event delegation means attaching one event listener to a parent element instead of one to every child. Because most events bubble up the DOM tree, the parent sees events from its descendants and can check `event.target` to find which child was involved. It uses less memory and works for elements added later.

[Read the full answer](https://uiround.com/answers/what-is-event-delegation-in-javascript)

### What is hoisting in JavaScript?

Hoisting is how JavaScript registers declarations before it runs any code in a scope. The engine reads the whole scope first and creates the names, so you can use some of them above the line that declares them. Function declarations are fully usable early, `var` gives you `undefined`, and `let`, `const` and `class` throw an error.

[Read the full answer](https://uiround.com/answers/what-is-hoisting-in-javascript)

### What is strict mode in JavaScript?

Strict mode is an opt-in variant of JavaScript that turns several silent mistakes into thrown errors and removes some confusing features. You enable it with the `"use strict"` directive at the top of a script or function. ES modules and class bodies are always strict, so most modern code already runs in it.

[Read the full answer](https://uiround.com/answers/what-is-strict-mode-in-javascript)

### What is the difference between == and === in JavaScript?

`===` is strict equality: it returns `true` only when both values have the same type and the same value. `==` is loose equality: if the types differ, JavaScript converts one or both values first and then compares them. Use `===` by default, because coercion produces results that are hard to predict.

[Read the full answer](https://uiround.com/answers/difference-between-double-equals-and-triple-equals-in-javascript)

### What is the difference between null and undefined?

`undefined` means "no value has been assigned": it is what JavaScript gives you for uninitialised variables, missing properties, skipped arguments and functions that return nothing. `null` means "deliberately empty": you set it yourself to say there is no object or value here. They are two different primitive types.

[Read the full answer](https://uiround.com/answers/what-is-the-difference-between-null-and-undefined)

### What is the difference between the spread and rest operators?

Spread and rest both use `...`, but they do opposite jobs. Spread expands an array, string or object into separate values where you use it. Rest collects the remaining values into one array or object where you declare them, in function parameters or destructuring. Position decides which one you have.

[Read the full answer](https://uiround.com/answers/what-is-the-difference-between-the-spread-and-rest-operators)

### What is the difference between var, let and const?

`var` is function scoped, can be redeclared and is hoisted with the value `undefined`. `let` and `const` are block scoped, cannot be redeclared in the same scope and cannot be used before their declaration. `let` can be reassigned, while `const` cannot be rebound. Use `const` by default, `let` when you must reassign, and avoid `var`.

[Read the full answer](https://uiround.com/answers/what-is-the-difference-between-var-let-and-const)

## Intermediate

### Async/await vs promises: what is the difference?

`async`/`await` is not a separate mechanism. It is syntax built on [promises](/answers/what-is-a-promise-in-javascript). An `async` function always returns a promise, and `await` pauses that function until a promise settles, then gives you its value or throws its error. The same work can be written either way. `await` mainly reads like synchronous code.

[Read the full answer](https://uiround.com/answers/async-await-vs-promises-what-is-the-difference)

### ES modules vs CommonJS: what is the difference?

ES modules (ESM) use `import` and `export`, are analysed before the code runs, and export live bindings. CommonJS (CJS) uses `require()` and `module.exports`, runs synchronously, and exports a value at the time of the call. ESM is the language standard for browsers and Node. CommonJS is the older Node format.

[Read the full answer](https://uiround.com/answers/es-modules-vs-commonjs-what-is-the-difference)

### ES6 classes vs ES5 constructor functions: what changed?

ES6 classes use the same prototype system as ES5 constructor functions, but they are not just new syntax. A class must be called with `new`, runs in strict mode, has non-enumerable methods and is in the temporal dead zone until declared. `extends` sets up inheritance correctly, even for built-ins like `Array` and `Error`, and classes add `super`, private `#fields` and static blocks.

[Read the full answer](https://uiround.com/answers/es6-classes-vs-es5-constructor-functions-what-changed)

### Event bubbling vs event capturing: what is the difference?

When an event fires on a DOM element, it travels in three phases. Capturing goes from the window down to the target's parent, then the target phase runs, and bubbling goes back up to the window. Listeners run in bubbling by default. Pass `{ capture: true }` to run a listener in the capturing phase instead.

[Read the full answer](https://uiround.com/answers/event-bubbling-vs-event-capturing-what-is-the-difference)

### How do you create custom error classes in JavaScript?

Create a custom error by extending `Error` with a class: call `super(message, options)` so the message, stack trace and optional `cause` are set up, assign `this.name` so logs show the right type, and add any fields your code needs, like `status` or `field`. Callers can then tell errors apart with `instanceof` and handle each kind differently instead of parsing message strings.

[Read the full answer](https://uiround.com/answers/how-do-you-create-custom-error-classes-in-javascript)

### How does the this keyword work in JavaScript?

In JavaScript, `this` is decided by how a function is called, not where it is written. A method call `obj.fn()` sets `this` to `obj`, `new Fn()` sets it to the new object, `call`, `apply` and `bind` set it explicitly, and a plain call leaves it `undefined` in strict mode. Arrow functions ignore these rules and use the `this` of the code around them.

[Read the full answer](https://uiround.com/answers/how-does-the-this-keyword-work-in-javascript)

### Map vs object and Set vs array in JavaScript

Use a `Map` when you need a dictionary with arbitrary keys, a reliable size and frequent additions and removals. Use a plain object for fixed-shape records and JSON. Use a `Set` when you need unique values and fast membership checks, and an array when order, indexes or array methods matter.

[Read the full answer](https://uiround.com/answers/map-vs-object-and-set-vs-array-in-javascript)

### Promise.all vs Promise.allSettled vs Promise.race vs Promise.any

All four take an iterable of promises and return one promise, but they decide differently. `Promise.all` fulfils when every input fulfils and rejects on the first failure. `allSettled` waits for all and never rejects. `race` copies the first promise to settle, either way. `any` fulfils with the first success and rejects only if all fail.

[Read the full answer](https://uiround.com/answers/promise-all-vs-promise-allsettled-vs-promise-race-vs-promise-any)

### Unicode, UTF-8 and UTF-16 explained for JavaScript developers

Unicode gives every character a number called a code point, from U+0000 to U+10FFFF. UTF-8 and UTF-16 are two ways to store those numbers as bytes: UTF-8 uses one to four bytes and is the standard for files and the web, while UTF-16 uses two or four. JavaScript strings are UTF-16 code units, which is why `"😀".length` is 2 and why naive string slicing can break emoji.

[Read the full answer](https://uiround.com/answers/unicode-utf-8-and-utf-16-explained-for-javascript-developers)

### What are generators in JavaScript?

A generator is a function declared with `function*` that can pause at each `yield` and resume later. Calling it does not run the body: it returns an iterator, and each `next()` call runs until the next `yield`. Generators produce values lazily, one at a time, and can receive values back.

[Read the full answer](https://uiround.com/answers/what-are-generators-in-javascript)

### What is a pure function, and why does immutability matter?

A pure function always returns the same result for the same arguments and causes no side effects: it does not change outside state, its inputs, or the world around it. Immutability means you never modify data in place, you create updated copies. Together they make code predictable, testable and cheap to compare.

[Read the full answer](https://uiround.com/answers/what-is-a-pure-function-and-why-does-immutability-matter)

### What is a Symbol in JavaScript used for?

A Symbol is a primitive value that is guaranteed to be unique, created by calling `Symbol()`. Its main use is as an object property key that can never collide with any other key, so libraries can add properties without clashing with yours. Built-in well-known symbols such as `Symbol.iterator` let objects plug into language features.

[Read the full answer](https://uiround.com/answers/what-is-a-symbol-in-javascript-used-for)

### What is currying in JavaScript?

Currying turns a function that takes several arguments into a chain of functions that each take one, so `f(a, b, c)` becomes `f(a)(b)(c)`. Each call returns a new function until all arguments have arrived. It works through closures and makes it easy to build specialised functions from general ones.

[Read the full answer](https://uiround.com/answers/what-is-currying-in-javascript)

### What is memoization in JavaScript?

Memoization is caching the return value of a function by its arguments. The first call with a set of arguments does the work and stores the result. Later calls with the same arguments return the stored result instead of recomputing it. It only works safely for pure functions, where the same input always gives the same output.

[Read the full answer](https://uiround.com/answers/what-is-memoization-in-javascript)

### What is prototypal inheritance in JavaScript?

Prototypal inheritance means an object can inherit properties and methods directly from another object. Every object has an internal link to a prototype. When you read a property that the object does not have, JavaScript follows that link and keeps going up the chain until it finds the property or reaches `null`. Classes in JavaScript are built on this.

[Read the full answer](https://uiround.com/answers/what-is-prototypal-inheritance-in-javascript)

### What is the difference between a shallow copy and a deep copy?

A shallow copy duplicates only the top level of an object or array, so nested objects are still shared with the original. A deep copy duplicates every level, so the copy shares nothing. Changing a nested value in a shallow copy also changes the original. In modern JavaScript, `structuredClone` makes a deep copy.

[Read the full answer](https://uiround.com/answers/what-is-the-difference-between-a-shallow-copy-and-a-deep-copy)

### What is the difference between call, apply and bind?

`call` and `apply` invoke a function immediately with a chosen `this` value. They differ only in how arguments are passed: `call` takes them one by one, `apply` takes an array. `bind` does not run the function. It returns a new function with `this` and, optionally, some leading arguments fixed for later calls.

[Read the full answer](https://uiround.com/answers/what-is-the-difference-between-call-apply-and-bind)

### What is the temporal dead zone in JavaScript?

The temporal dead zone (TDZ) is the stretch of a scope between its start and the line where a `let`, `const` or `class` is declared. The name already exists, but it has no value yet. Reading or writing it in that stretch throws a `ReferenceError`, which catches use-before-declaration bugs instead of returning `undefined`.

[Read the full answer](https://uiround.com/answers/what-is-the-temporal-dead-zone-in-javascript)

### What is type coercion in JavaScript?

Type coercion is the automatic or manual conversion of a value from one type to another, such as a string to a number. JavaScript does it implicitly in operators like `+`, `==` and `if`, and explicitly with `Number()`, `String()` and `Boolean()`. Knowing the rules explains results like `"5" + 2` being `"52"`.

[Read the full answer](https://uiround.com/answers/what-is-type-coercion-in-javascript)

### Why should you not extend built-in prototypes in JavaScript?

Adding your own methods to built-in prototypes like `Array.prototype`, `String.prototype` or `Object.prototype` changes every array, string or object in the page, including those inside libraries. Your method can clash with another library's or a future standard method of the same name, and it can appear in `for...in` loops. Write a utility function instead. Polyfills of standard methods are the one accepted exception.

[Read the full answer](https://uiround.com/answers/why-should-you-not-extend-built-in-prototypes-in-javascript)

## Advanced

### How does garbage collection work in JavaScript?

JavaScript frees memory automatically through garbage collection. The engine finds every object that can still be reached from roots such as global variables and the active call stack, and reclaims the rest. The core algorithm is mark-and-sweep. An object is kept as long as something reachable still references it.

[Read the full answer](https://uiround.com/answers/how-does-garbage-collection-work-in-javascript)

### setTimeout vs setImmediate vs process.nextTick

In Node.js, `process.nextTick` callbacks run as soon as the current operation finishes, before promise callbacks and before the event loop moves on. `setImmediate` runs in the event loop's check phase, right after I/O polling. `setTimeout(fn, 0)` runs in the timers phase once at least 1ms has passed. So inside an I/O callback, `setImmediate` always beats `setTimeout(0)`, and `nextTick` beats both. Browsers have only `setTimeout`; `setImmediate` and `nextTick` are Node APIs.

[Read the full answer](https://uiround.com/answers/settimeout-vs-setimmediate-vs-process-nexttick)

### What are WeakMap and WeakSet used for?

`WeakMap` and `WeakSet` store objects without preventing them from being garbage collected. A `WeakMap` links extra data to an object key, and a `WeakSet` marks objects as members. When nothing else references the object, the entry disappears automatically, so they are used for metadata, caches and private data that must not leak memory.

[Read the full answer](https://uiround.com/answers/what-are-weakmap-and-weakset-used-for)

[All topics](../README.md#interview-questions-and-answers-by-topic) · [Report a mistake](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml)
