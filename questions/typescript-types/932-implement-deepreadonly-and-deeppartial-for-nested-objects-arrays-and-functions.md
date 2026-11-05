# Implement DeepReadonly and DeepPartial for nested objects, arrays and functions

**Track:** TypeScript type challenges  
**Level:** Medium  
**Time:** about 30 minutes

**[Solve it in the browser with tests](https://uiround.com/questions/implement-deepreadonly-and-deeppartial-for-nested-objects-arrays-and-functions)**: free, no account needed.

## Problem

`Readonly<T>` and `Partial<T>` only change the top level of an object. State stores and config loaders often need the deep versions: a frozen state tree, or a config override where any nested field may be left out.

Write two types:

- **`DeepReadonly<T>`**: every property at every depth becomes `readonly`. Arrays become readonly arrays and tuples become readonly tuples, with their elements made deeply readonly too.
- **`DeepPartial<T>`**: every object property at every depth becomes optional. Arrays and tuples keep their shape and length, but objects inside them become deeply partial.

Both types leave primitives and function types unchanged. A method like `onSave: () => void` must still be a callable function, not an empty object.

```ts
type State = { user: { name: string; tags: string[] }; onSave: () => void };

type Frozen = DeepReadonly<State>;
// { readonly user: { readonly name: string; readonly tags: readonly string[] }; readonly onSave: () => void }

type Patch = DeepPartial<State>;
// { user?: { name?: string; tags?: string[] }; onSave?: () => void }
```

## Starter code

```ts
type DeepReadonly<T> = any;

type DeepPartial<T> = any;
```

## Hints

<details><summary>Hint 1</summary>

Start from the built-in Readonly and Partial, which are one level deep, and make the property type recurse into itself.

</details>

<details><summary>Hint 2</summary>

Decide by the shape of the type: functions stay as they are, objects and arrays get mapped, and everything else is returned unchanged.

</details>

<details><summary>Hint 3</summary>

A function type is also an object, and mapping over it gives an empty object type. Check for functions before you check for objects.

</details>

## Solution

The full answer is free on UIRound: [Implement DeepReadonly and DeepPartial for nested objects, arrays and functions](https://uiround.com/questions/implement-deepreadonly-and-deeppartial-for-nested-objects-arrays-and-functions). It has a tested solution, a step-by-step explanation, edge cases, follow-up questions with model answers, and the tests to run your own code against.

Found a mistake in this question? [Report it](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml&title=%5BQuestion%20932%5D%20).
