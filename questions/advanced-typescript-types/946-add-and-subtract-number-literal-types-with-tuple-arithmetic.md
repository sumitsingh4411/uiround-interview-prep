# Add and subtract number literal types with tuple arithmetic

**Track:** Advanced TypeScript types  
**Level:** Hard  
**Time:** about 50 minutes

**[Solve it in the browser with tests](https://uiround.com/questions/add-and-subtract-number-literal-types-with-tuple-arithmetic)**: free, no account needed.

## Problem

Typed array helpers, fixed-length tuples and range types sometimes need arithmetic on number literals. TypeScript has no type-level `+` or `-`, so you build it from tuples.

Write two types:

- **`Add<A, B>`**: the number literal `A + B`.
- **`Subtract<A, B>`**: the number literal `A - B`, or `never` when `B` is greater than `A` (the result would be negative).

Rules:

- `A` and `B` must be numbers; anything else is a compile error.
- Inputs are non-negative integer literals from 0 to 999. That limit comes from the compiler: a tail-recursive conditional type may recurse about 1,000 times, and building a tuple of length N takes N steps.
- If either input is the wide type `number`, the result is `number`.
- If either input is negative or not an integer, the result is `never`. It must not hit the compiler's "excessively deep" error.

```ts
type A = Add<2, 3>; // 5
type B = Subtract<10, 4>; // 6
type C = Subtract<3, 5>; // never
type D = Add<number, 1>; // number
```

## Starter code

```ts
type Add<A extends number, B extends number> = any;

type Subtract<A extends number, B extends number> = any;
```

## Hints

<details><summary>Hint 1</summary>

The type system cannot add numbers, but it can count. A tuple's `length` is a number literal, so a tuple with N elements stands for N.

</details>

<details><summary>Hint 2</summary>

Build a tuple of N elements with a tail-recursive helper, add by spreading two tuples into one, and subtract by matching `[...Smaller, ...infer Rest]` and reading the length of Rest.

</details>

<details><summary>Hint 3</summary>

Guard the inputs. `number`, negative numbers and decimals never reach the length you are counting towards, so the recursion runs until the compiler gives up with a depth error.

</details>

## Solution

The full answer is free on UIRound: [Add and subtract number literal types with tuple arithmetic](https://uiround.com/questions/add-and-subtract-number-literal-types-with-tuple-arithmetic). It has a tested solution, a step-by-step explanation, edge cases, follow-up questions with model answers, and the tests to run your own code against.

Found a mistake in this question? [Report it](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml&title=%5BQuestion%20946%5D%20).
