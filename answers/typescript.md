# TypeScript interview questions and answers

The questions interviewers open with, each with a short answer you can say out loud. Every question links to the full answer on [UIRound](https://uiround.com), with examples, comparisons and the follow-up questions that come next. Free, no account needed.

Practise the coding side with tests: [TypeScript interview questions and type challenges](https://uiround.com/interview-questions/typescript).

## Beginner

### interface vs type in TypeScript

Both `interface` and `type` can describe the shape of an object, and for most code they are interchangeable. The main differences: an interface can be reopened and merged by declaring it again, while a type alias can name anything, including unions, tuples, primitives and computed types. A good default is an interface for object shapes and a type for everything else.

[Read the full answer](https://uiround.com/answers/interface-vs-type-in-typescript)

### TypeScript vs JavaScript: why use TypeScript?

TypeScript is JavaScript with a static type system on top. You write types, the compiler checks them before the code runs, and the types are removed so the browser still runs plain JavaScript. You use it to catch mistakes early, get reliable autocomplete and refactoring, and document what functions accept and return, especially in large or shared codebases.

[Read the full answer](https://uiround.com/answers/typescript-vs-javascript-why-use-typescript)

## Intermediate

### any vs unknown vs never in TypeScript

`any` switches off type checking for a value, so anything is allowed. `unknown` accepts any value too, but you must narrow it before you can use it. `never` is the type with no values, used for functions that never return and for cases that cannot happen. Prefer `unknown` over `any` for data you do not control.

[Read the full answer](https://uiround.com/answers/any-vs-unknown-vs-never-in-typescript)

### enum vs union of string literals in TypeScript

A TypeScript `enum` creates a real object at runtime, while a union of string literals, such as `"idle" | "loading"`, is only a type and disappears when compiled. For most code, a string-literal union is simpler, works with plain strings and JSON, and avoids enum quirks. Use an enum only when you need its runtime object or must match existing code.

[Read the full answer](https://uiround.com/answers/enum-vs-union-of-string-literals-in-typescript)

### How do you type React props, state and hooks in TypeScript?

Type a component's props with an `interface` or `type` on the function parameter, let `useState` infer its type from the initial value, and pass a generic when the initial value does not tell the whole story, such as `useState<User | null>(null)`. Hooks such as `useRef`, `useReducer` and `useContext` follow the same pattern: infer where you can, annotate where you cannot.

[Read the full answer](https://uiround.com/answers/how-do-you-type-react-props-state-and-hooks-in-typescript)

### Union vs intersection types in TypeScript

A union type, `A | B`, describes a value that is either A or B, so you can only safely use what both share until you narrow it. An intersection type, `A & B`, describes a value that is both A and B at once, so it has all the properties of each. Unions widen what is allowed; intersections combine requirements.

[Read the full answer](https://uiround.com/answers/union-vs-intersection-types-in-typescript)

### What are generics in TypeScript?

Generics are type parameters. They let you write one function, interface or class that works with many types while TypeScript still tracks the exact type in each use. Instead of falling back to `any`, you write `T` as a placeholder, and the compiler fills it in from the arguments or from the type you provide.

[Read the full answer](https://uiround.com/answers/what-are-generics-in-typescript)

### What are utility types like Partial, Pick, Omit and Record?

Utility types are generic types built into TypeScript that make a new type out of an existing one. `Partial<T>` makes every property optional, `Pick<T, K>` keeps only some keys, `Omit<T, K>` removes keys, and `Record<K, V>` builds an object type with given keys and one value type. They remove the need to repeat type definitions.

[Read the full answer](https://uiround.com/answers/what-are-utility-types-like-partial-pick-omit-and-record)

### What does as const do in TypeScript?

`as const` is a TypeScript const assertion. It tells the compiler to infer the narrowest possible type for a value: string, number and boolean literals stay literal, object properties become `readonly`, and arrays become `readonly` tuples. It changes types only. It emits no JavaScript and does not freeze anything at runtime.

[Read the full answer](https://uiround.com/answers/what-does-as-const-do-in-typescript)

### What is type narrowing in TypeScript?

Type narrowing is TypeScript refining a wide type, such as `string | number`, into a more specific one inside a branch of code. You check the value with `typeof`, `instanceof`, `in`, an equality test or a custom type guard, and within that branch the compiler treats the value as the narrower type.

[Read the full answer](https://uiround.com/answers/what-is-type-narrowing-in-typescript)

[All topics](../README.md#interview-questions-and-answers-by-topic) · [Report a mistake](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml)
