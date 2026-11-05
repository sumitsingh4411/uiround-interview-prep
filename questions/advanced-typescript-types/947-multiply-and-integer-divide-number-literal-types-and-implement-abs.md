# Multiply and integer-divide number literal types, and implement Abs

**Track:** Advanced TypeScript types  
**Level:** Hard  
**Time:** about 55 minutes

**[Solve it in the browser with tests](https://uiround.com/questions/multiply-and-integer-divide-number-literal-types-and-implement-abs)**: free, no account needed.

## Problem

Once you can count with tuples, the next interview step is multiplication and division, plus a small string trick for absolute values.

Write three types:

- **`Multiply<A, B>`**: the number literal `A * B`.
- **`Divide<A, B>`**: integer division, the number literal `Math.floor(A / B)`. `Divide<A, 0>` is `never`.
- **`Abs<N>`**: the absolute value of any number literal, including negatives and decimals: `Abs<-2.5>` is `2.5`.

Rules for `Multiply` and `Divide`:

- Inputs are non-negative integer literals from 0 to 999, and the product must be at most 9,999 (the compiler's maximum tuple length). Loops must be tail-recursive conditional types, which the compiler allows to run about 1,000 times.
- If an input is the wide type `number`, the result is `number`.

Rules for `Abs`:

- `Abs<number>` is `number`.
- It must not use tuples, so it works for any number literal, such as `Abs<-123456>`.

```ts
type A = Multiply<6, 7>; // 42
type B = Divide<17, 5>; // 3
type C = Divide<5, 0>; // never
type D = Abs<-42>; // 42
```

## Starter code

```ts
type Multiply<A extends number, B extends number> = any;

type Divide<A extends number, B extends number> = any;

type Abs<N extends number> = any;
```

## Hints

<details><summary>Hint 1</summary>

Multiplication is repeated addition and division is repeated subtraction. With tuples standing for numbers, both become loops that add or remove a block of elements.

</details>

<details><summary>Hint 2</summary>

For Divide, keep removing B elements from the front of A's tuple with `[...BTuple, ...infer Rest]` and count how many times it matched. For Abs, work on the string form of the number.

</details>

<details><summary>Hint 3</summary>

Dividing by zero would remove an empty block forever, so check for 0 first. Keep every loop tail-recursive, or the compiler stops at about 50 levels instead of about 1,000.

</details>

## Solution

The full answer is free on UIRound: [Multiply and integer-divide number literal types, and implement Abs](https://uiround.com/questions/multiply-and-integer-divide-number-literal-types-and-implement-abs). It has a tested solution, a step-by-step explanation, edge cases, follow-up questions with model answers, and the tests to run your own code against.

Found a mistake in this question? [Report it](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml&title=%5BQuestion%20947%5D%20).
