# Testing interview questions and answers

The questions interviewers open with, each with a short answer you can say out loud. Every question links to the full answer on [UIRound](https://uiround.com), with examples, comparisons and the follow-up questions that come next. Free, no account needed.

Practise the coding side with tests: [Frontend testing interview questions: Jest and Testing Library](https://uiround.com/interview-questions/frontend-testing).

## Beginner

### getBy vs queryBy vs findBy in React Testing Library: which one to use?

Use `getBy` when the element should be there right now: it returns the element or throws a helpful error. Use `queryBy` to assert that something is not there: it returns `null` instead of throwing. Use `findBy` when the element appears later, after a fetch or a timer: it returns a promise that retries until the element shows up or a timeout passes. Each has an `All` version for several elements.

[Read the full answer](https://uiround.com/answers/getby-vs-queryby-vs-findby-in-react-testing-library)

### Unit vs integration vs end-to-end tests

Unit tests check one small piece of code in isolation, such as a function or a hook. Integration tests check that several pieces work together, such as a component with its child components and a mocked API. End-to-end (E2E) tests drive the whole app in a real browser like a user would. They differ in speed, cost and how much confidence they give.

[Read the full answer](https://uiround.com/answers/unit-vs-integration-vs-end-to-end-tests)

### What is mocking in tests?

Mocking means replacing a real dependency, such as a network call, a database, the clock or a module, with a controlled stand-in during a test. This makes the test fast, repeatable and focused on the code you are checking. The risk is over-mocking: if you replace too much, the test passes while the real system is broken.

[Read the full answer](https://uiround.com/answers/what-is-mocking-in-tests)

### What is test-driven development (TDD)?

Test-driven development (TDD) is a way of working where you write a failing test before the code that makes it pass. You repeat a short loop: red (a test fails), green (write the simplest code that passes), refactor (clean up while tests stay green). It produces code that is testable by design and a safety net for later changes.

[Read the full answer](https://uiround.com/answers/what-is-test-driven-development-tdd)

## Intermediate

### fireEvent vs userEvent: what is the difference?

`fireEvent` dispatches a single DOM event, such as one `click` or one `change`, exactly as you describe it. `userEvent` simulates what a person does: a click becomes pointer and mouse events with focus moving, and typing becomes `keydown`, `keypress`, `beforeinput`, `input` and `keyup` for every character, honouring `disabled`, `readonly`, `maxlength` and cancelled events. Prefer `userEvent`; keep `fireEvent` for events no gesture produces.

[Read the full answer](https://uiround.com/answers/fireevent-vs-userevent-what-is-the-difference)

### How do you test asynchronous code and timers in Jest?

Make the test wait for the same thing the code waits for. For promises, `await` them (or return them) and use `.resolves` and `.rejects`. For UI that updates later, use `findBy` queries or `waitFor`. For code built on `setTimeout`, `setInterval` or `Date.now()`, replace real time with fake timers and advance the clock yourself instead of sleeping.

[Read the full answer](https://uiround.com/answers/how-do-you-test-asynchronous-code-and-timers-in-jest)

### How do you test custom React hooks?

Test a hook the way it is used. If it belongs to one component, test that component. If it is reusable, render it with `renderHook` from React Testing Library, read its value from `result.current`, trigger updates inside `act`, change its inputs with `rerender`, provide context with a `wrapper`, and check that `unmount` cleans up subscriptions and timers.

[Read the full answer](https://uiround.com/answers/how-do-you-test-custom-react-hooks)

### How do you write reliable end-to-end tests with Playwright?

Reliable Playwright tests find elements the way users do, with `getByRole` and `getByLabel`, and assert with web-first assertions like `await expect(locator).toBeVisible()`, which retry until the condition holds. They never use fixed sleeps, give each test its own data, reuse a saved login instead of signing in through the UI every time, and record traces on failure so a flaky run can be diagnosed instead of retried away.

[Read the full answer](https://uiround.com/answers/how-do-you-write-reliable-end-to-end-tests-with-playwright)

### Jest vs Vitest: what is the difference?

Jest and Vitest are both JavaScript test runners with `describe`, `it`, `expect` and mocking built in. Jest is the long-established default, based on CommonJS and Babel transforms. Vitest is newer, built on Vite, and runs ES modules and TypeScript natively with the same config as your app. For Vite projects it is usually the better choice; Jest remains fine for existing codebases.

[Read the full answer](https://uiround.com/answers/jest-vs-vitest-what-is-the-difference)

### jest.fn vs jest.spyOn vs jest.mock: what is the difference?

`jest.fn()` creates a new mock function you pass in yourself, such as a callback or an injected dependency. `jest.spyOn(object, "method")` replaces one method on an existing object with a mock that still calls the original unless you override it, and can be restored. `jest.mock("./module")` replaces a whole module in the module registry, so every file that imports it gets the mock.

[Read the full answer](https://uiround.com/answers/jest-fn-vs-jest-spyon-vs-jest-mock)

### Playwright vs Cypress: what is the difference?

Both are end-to-end testing tools for web apps with automatic waiting and good debugging. The core difference is architecture: Playwright runs your test in Node and drives browsers from outside through automation protocols, so it handles several tabs, origins and browser engines easily. Cypress runs your test inside the browser next to the app, which gives it a very interactive debugger but makes multi-tab and some cross-origin flows harder.

[Read the full answer](https://uiround.com/answers/playwright-vs-cypress-what-is-the-difference)

### What is React Testing Library, and how should you test components?

React Testing Library (RTL) is a set of utilities for rendering React components in a test DOM and interacting with them the way a user does: finding elements by role, label and text, typing, clicking and checking what appears. Its guiding rule is to test behaviour a user can see, not implementation details like state, props or component names.

[Read the full answer](https://uiround.com/answers/what-is-react-testing-library-and-how-should-you-test-components)

### What is snapshot testing, and when should you use it?

Snapshot testing serializes a value, such as rendered markup, a config object or an error message, and stores the text the first time the test runs. Later runs serialize again and fail if the text differs. It is cheap to write and good at catching unintended changes, but a snapshot only says "something changed", not whether the change is right, so large snapshots tend to get approved without review.

[Read the full answer](https://uiround.com/answers/what-is-snapshot-testing-and-when-should-you-use-it)

### What should you test in a frontend app? The testing trophy explained

Test the behaviour users depend on, weighted by how much it would hurt if it broke: the critical journeys (sign-up, checkout, saving work), every state a screen can be in (loading, empty, error, success), the logic with edge cases, and the contracts with your API. Write most of those as integration tests of components, a few end-to-end tests for whole journeys, and let types and linting catch the rest.

[Read the full answer](https://uiround.com/answers/what-should-you-test-in-a-frontend-app)

[All topics](../README.md#interview-questions-and-answers-by-topic) · [Report a mistake](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml)
