# Angular interview questions and answers

The questions interviewers open with, each with a short answer you can say out loud. Every question links to the full answer on [UIRound](https://uiround.com), with examples, comparisons and the follow-up questions that come next. Free, no account needed.

Practise the coding side with tests: [Angular interview questions: machine coding with signals](https://uiround.com/interview-questions/angular).

## Beginner

### What are Angular lifecycle hooks and in what order do they run?

Lifecycle hooks are methods Angular calls at specific moments in a component's life: when inputs change, after it is initialised, after its content and view are rendered, on each change detection pass, and just before it is destroyed. You implement the ones you need, such as `ngOnInit` for setup and `ngOnDestroy` for cleanup. Current Angular adds `afterNextRender`, `afterEveryRender` and `DestroyRef` as function-based alternatives.

[Read the full answer](https://uiround.com/answers/what-are-angular-lifecycle-hooks)

### What are standalone components in Angular and how do they replace NgModules?

A standalone component is an Angular component that lists its own dependencies in an `imports` array instead of being declared in an NgModule. Standalone components, directives and pipes can be used directly by other components, routed to and lazy-loaded without any module. Since Angular v19 components are standalone by default, and NgModules are optional, mostly kept for older code and some libraries.

[Read the full answer](https://uiround.com/answers/what-are-standalone-components-in-angular)

## Intermediate

### How does change detection work in Angular?

Change detection is how Angular keeps the DOM in sync with component state. Something tells Angular that state may have changed, then Angular walks the component tree and re-evaluates template bindings, updating only the DOM nodes whose values differ. Classic apps use zone.js to trigger this after every async event. Modern apps use signals and zoneless change detection, so Angular is told exactly when and where state changed.

[Read the full answer](https://uiround.com/answers/how-does-change-detection-work-in-angular)

### Observables vs promises in Angular: what is the difference?

A promise represents one future value. It starts work as soon as it is created, settles once, and cannot be cancelled. An observable represents a stream of zero or more values over time. It does nothing until someone subscribes, can emit many values, and can be cancelled by unsubscribing. Angular uses RxJS observables for HTTP, router events and reactive forms, and signals for state.

[Read the full answer](https://uiround.com/answers/observables-vs-promises-in-angular-what-is-the-difference)

### switchMap vs mergeMap vs concatMap vs exhaustMap in RxJS

All four operators map each source value to an inner observable, such as an HTTP request, and flatten the results into one stream. They differ only in what happens when a new value arrives while the previous inner observable is still running. `switchMap` cancels the old one, `mergeMap` runs both in parallel, `concatMap` queues the new one, and `exhaustMap` ignores the new one.

[Read the full answer](https://uiround.com/answers/switchmap-vs-mergemap-vs-concatmap-vs-exhaustmap)

### Template-driven vs reactive forms in Angular: what is the difference?

Template-driven forms define the form model in the template with directives like `ngModel`, and Angular builds the controls for you behind the scenes. Reactive forms define the model explicitly in the component class with `FormControl`, `FormGroup` and `FormArray`, and the template only binds to it. Template-driven forms suit small, simple forms. Reactive forms suit complex, dynamic or heavily validated forms because they are typed, synchronous and easy to test.

[Read the full answer](https://uiround.com/answers/what-is-the-difference-between-template-driven-and-reactive-forms-in-angular)

### What are signals in Angular?

A signal in Angular is a wrapper around a value that notifies whoever reads it when the value changes. You read it by calling it, `count()`, and write it with `set` or `update`. Angular tracks which templates, `computed` values and effects read each signal, so when one changes it updates only what depends on it. Signals are the base of modern Angular state, inputs and zoneless change detection.

[Read the full answer](https://uiround.com/answers/what-are-signals-in-angular)

### What is dependency injection in Angular?

Dependency injection (DI) in Angular means a class asks for what it needs, such as a service, and Angular's injectors create and hand over the instance. You register how to create a dependency with a provider, then request it with `inject()` or a constructor parameter. Injectors form a hierarchy, so where you provide something decides how many instances exist and who shares them.

[Read the full answer](https://uiround.com/answers/what-is-dependency-injection-in-angular)

[All topics](../README.md#interview-questions-and-answers-by-topic) · [Report a mistake](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml)
