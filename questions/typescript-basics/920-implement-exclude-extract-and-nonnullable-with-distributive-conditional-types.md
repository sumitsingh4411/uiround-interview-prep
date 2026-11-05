# Implement Exclude, Extract and NonNullable with distributive conditional types

**Track:** TypeScript utility types  
**Level:** Easy  
**Time:** about 15 minutes

**[Solve it in the browser with tests](https://uiround.com/questions/implement-exclude-extract-and-nonnullable-with-distributive-conditional-types)**: free, no account needed.

## Problem

Narrowing a union is everyday work: drop `null` before rendering, pick the event types a handler supports, remove the states a component no longer shows. `Exclude`, `Extract` and `NonNullable` do this, and all three come from one feature: distributive conditional types.

Write three types without using the built-in `Exclude`, `Extract` or `NonNullable`:

- **`MyExclude<T, U>`**: the members of the union `T` that are not assignable to `U`.
- **`MyExtract<T, U>`**: the members of the union `T` that are assignable to `U`.
- **`MyNonNullable<T>`**: `T` without `null` and `undefined`.

Members are compared by assignability, so `MyExtract<"a" | 1 | true, string>` is `"a"`, and filtering object types works on their shape.

```ts
type Theme = "light" | "dark" | "system";

type Manual = MyExclude<Theme, "system">; // "light" | "dark"
type Words = MyExtract<"a" | 1 | true, string>; // "a"
type Name = MyNonNullable<string | null | undefined>; // string
```

## Starter code

```ts
type MyExclude<T, U> = any;

type MyExtract<T, U> = any;

type MyNonNullable<T> = any;
```

## Hints

<details><summary>Hint 1</summary>

All three types filter a union member by member. Think about what a conditional type does when the type being checked is a union.

</details>

<details><summary>Hint 2</summary>

A conditional type on a naked type parameter, such as `T extends U ? X : Y`, runs once per member of `T`. Returning `never` drops that member from the result.

</details>

<details><summary>Hint 3</summary>

Distribution only happens when the checked type is a bare type parameter. Wrapping it, as in `[T] extends [U]`, compares the whole union at once and breaks the filter.

</details>

## Solution

The full answer is free on UIRound: [Implement Exclude, Extract and NonNullable with distributive conditional types](https://uiround.com/questions/implement-exclude-extract-and-nonnullable-with-distributive-conditional-types). It has a tested solution, a step-by-step explanation, edge cases, follow-up questions with model answers, and the tests to run your own code against.

Found a mistake in this question? [Report it](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml&title=%5BQuestion%20920%5D%20).
