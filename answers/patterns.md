# Design patterns and architecture interview questions and answers

The questions interviewers open with, each with a short answer you can say out loud. Every question links to the full answer on [UIRound](https://uiround.com), with examples, comparisons and the follow-up questions that come next. Free, no account needed.

Practise the coding side with tests: [Frontend architecture and design patterns interview questions](https://uiround.com/interview-questions/frontend-architecture).

## Beginner

### Composition vs inheritance in React: why does React favour composition?

React favours composition: you build complex components by putting simpler ones together and passing them data, elements and functions through props, rather than by extending a base component class. Composition keeps each component independent and lets callers customise it from outside with `children`, slots, render props or hooks. Inheritance ties a subclass to its parent's internals, which makes components fragile and hard to combine.

[Read the full answer](https://uiround.com/answers/composition-vs-inheritance-in-react)

### What is the factory pattern in JavaScript?

The factory pattern means creating objects through a function instead of calling a constructor directly. A factory function takes some input, decides what to build, and returns a ready-to-use object. Callers do not need `new`, do not need to know the concrete type, and can get private state through closures. `document.createElement`, `createStore` and validation builders like `z.string()` are factories you already use.

[Read the full answer](https://uiround.com/answers/what-is-the-factory-pattern-in-javascript)

### What is the module pattern in JavaScript?

The module pattern uses a function scope to hide private variables and return only a public API. Before JavaScript had built-in modules, code wrapped each file in an immediately invoked function expression (IIFE) so its variables did not leak into the global scope. The returned object's methods close over the private state. ES modules now give every file its own scope, but the closure idea is still used daily.

[Read the full answer](https://uiround.com/answers/what-is-the-module-pattern-in-javascript)

### What is the strategy pattern in JavaScript?

The strategy pattern lets you pick one of several interchangeable algorithms at runtime, behind a single interface. Instead of a long `if`/`switch` that mixes every variant into one function, each variant is its own function or object, and the caller chooses which to use. In JavaScript a strategy is usually just a function, so the pattern often looks like an object that maps names to functions.

[Read the full answer](https://uiround.com/answers/what-is-the-strategy-pattern-in-javascript)

## Intermediate

### How should you structure folders in a large React app?

In a large React app, group code by feature or business domain rather than by file type. Each feature folder holds its own components, hooks, API calls, state and tests, and exposes a small public entry point. Shared, generic code lives in separate layers that features may import but never the other way round. Lint rules then enforce those directions, so the structure survives growth.

[Read the full answer](https://uiround.com/answers/how-should-you-structure-folders-in-a-large-react-app)

### Monorepo vs polyrepo: which is better for frontend teams?

A monorepo keeps several apps and shared packages in one repository with one dependency graph, so a change to a shared component and every app that uses it can land in a single commit. A polyrepo gives each app or package its own repository and release cycle. Monorepos make sharing and refactoring easy but need build caching and ownership rules; polyrepos keep teams independent but make cross-cutting changes slow.

[Read the full answer](https://uiround.com/answers/monorepo-vs-polyrepo-for-frontend-teams)

### MVC vs MVVM vs Flux: what is the difference?

MVC, MVVM and Flux are ways to organise UI code around data. MVC splits an app into a model (data), a view (display) and a controller (input handling). MVVM replaces the controller with a view model that the view binds to, often in both directions. Flux, which inspired Redux, sends every change one way: an action goes to a store, the store updates state, and views re-render.

[Read the full answer](https://uiround.com/answers/mvc-vs-mvvm-vs-flux-what-is-the-difference)

### Observer pattern vs publish-subscribe: what is the difference?

In the observer pattern, a subject keeps a list of observers and calls them directly when it changes, so observers must know the subject to subscribe. In publish-subscribe, publishers send messages to a topic on a broker, and the broker delivers them to subscribers of that topic; publishers and subscribers never reference each other. Observer is simpler and synchronous; pub/sub decouples more but hides who talks to whom.

[Read the full answer](https://uiround.com/answers/observer-pattern-vs-publish-subscribe-what-is-the-difference)

### What are design patterns in JavaScript and which ones matter for frontend?

Design patterns are named, reusable solutions to problems that keep coming up when you structure code, such as "notify many parts of the app when something changes" (observer) or "swap an algorithm at runtime" (strategy). In JavaScript many classic patterns shrink to a few lines because functions are values and closures hold state. For frontend work, observer, module, factory, strategy, decorator, proxy, and state machines matter most.

[Read the full answer](https://uiround.com/answers/what-are-design-patterns-in-javascript-and-which-matter-for-frontend)

### What are the SOLID principles, and how do they apply to frontend code?

SOLID is five principles for code that is easy to change: Single responsibility, Open/closed, Liskov substitution, Interface segregation and Dependency inversion. They were written for classes, but in frontend code they map onto components, hooks and modules: keep each piece focused, extend through props and plugins rather than edits, keep contracts honest, ask only for what you use, and depend on abstractions you can swap in tests.

[Read the full answer](https://uiround.com/answers/what-are-the-solid-principles-in-frontend-code)

### What is a design system and how do you build one?

A design system is the shared source of truth for how a product looks and behaves: design tokens (colours, spacing, type), accessible components built from them, usage guidelines, and the process for changing all of it. A component library is only one part. You build one by extracting what teams already repeat, starting with tokens and a few core components, and treating it as a product with owners, versions and documentation.

[Read the full answer](https://uiround.com/answers/what-is-a-design-system-and-how-do-you-build-one)

### What is the command pattern in JavaScript?

The command pattern turns a request into an object that holds everything needed to perform it, usually with an `execute` method and often an `undo` method. Because actions become data, you can store them in a history for undo and redo, queue them, log them, replay them or bind them to keyboard shortcuts and menu items. Editors, drawing tools and command palettes rely on it.

[Read the full answer](https://uiround.com/answers/what-is-the-command-pattern-in-javascript)

### What is the decorator pattern in JavaScript?

The decorator pattern adds behaviour to a function or object by wrapping it, without changing the original. The wrapper has the same interface, does something extra such as logging, caching, timing or retrying, and delegates to the original. In JavaScript the everyday form is a higher-order function like `debounce(fn)` or `memoize(fn)`. There is also an `@decorator` syntax for classes, which TypeScript and Babel compile.

[Read the full answer](https://uiround.com/answers/what-is-the-decorator-pattern-in-javascript)

### What is the singleton pattern and when is it a bad idea?

The singleton pattern makes sure a thing has exactly one instance and gives the whole app one way to reach it. In JavaScript, an object exported from an ES module already behaves like a singleton, because a module is evaluated once and every importer gets the same object. Singletons suit stateless helpers and configured clients, but shared mutable state leaks between tests, between users in server rendering, and across duplicated bundles.

[Read the full answer](https://uiround.com/answers/what-is-the-singleton-pattern-and-when-is-it-a-bad-idea)

## Advanced

### How do you answer frontend architecture interview questions?

Answer a frontend architecture question by clarifying the product, users and team constraints first, then drawing the big boundaries: how the app is split into modules, where each kind of state lives, how and where it renders, and how teams ship it. Spend the rest of the time on trade-offs, failure handling and performance, and say what you would measure. Interviewers grade reasoning, not a single right diagram.

[Read the full answer](https://uiround.com/answers/how-do-you-answer-frontend-architecture-interview-questions)

### Micro-frontends: when do they help and when do they hurt?

Micro-frontends split one web app into pieces that separate teams build, test and deploy on their own, stitched together in the browser or on the server by a thin shell. They help when many teams block each other's releases on one codebase. They hurt when a single team adopts them, because you pay for duplicated dependencies, integration bugs and slower pages without getting the independence back.

[Read the full answer](https://uiround.com/answers/micro-frontends-when-do-they-help-and-when-do-they-hurt)

### What is the proxy pattern and how does JavaScript's Proxy implement it?

The proxy pattern puts a stand-in object in front of a real one so you can control access to it: validate writes, log reads, load data lazily or block operations. JavaScript builds this into the language with `new Proxy(target, handler)`, where the handler defines "traps" such as `get`, `set` and `has` that intercept operations on the target. Vue's reactivity, Immer and MobX are built on it.

[Read the full answer](https://uiround.com/answers/what-is-the-proxy-pattern-and-how-does-javascript-s-proxy-implement-it)

[All topics](../README.md#interview-questions-and-answers-by-topic) · [Report a mistake](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml)
