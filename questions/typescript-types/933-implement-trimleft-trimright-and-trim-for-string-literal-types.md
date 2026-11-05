# Implement TrimLeft, TrimRight and Trim for string literal types

**Track:** TypeScript type challenges  
**Level:** Medium  
**Time:** about 25 minutes

**[Solve it in the browser with tests](https://uiround.com/questions/implement-trimleft-trimright-and-trim-for-string-literal-types)**: free, no account needed.

## Problem

Template literal types let you transform string literal types at compile time, for example to normalise keys read from a config file. Trimming is the usual first exercise.

Write three types that take a string type `S`:

- **`TrimLeft<S>`**: removes every leading space (`" "`), tab (`"\t"`) and newline (`"\n"`).
- **`TrimRight<S>`**: removes the same characters from the end.
- **`Trim<S>`**: removes them from both ends.

Whitespace inside the string is kept. A string made only of whitespace becomes `""`. A union of strings is trimmed member by member. `S` must be a string type, so `Trim<42>` is a compile error.

```ts
type A = TrimLeft<"  hello ">; // "hello "
type B = TrimRight<"  hello ">; // "  hello"
type C = Trim<"\n\t hello world  ">; // "hello world"
```

## Starter code

```ts
type TrimLeft<S extends string> = any;

type TrimRight<S extends string> = any;

type Trim<S extends string> = any;
```

## Hints

<details><summary>Hint 1</summary>

A template literal type with infer can match a string that starts with a given character and capture the rest.

</details>

<details><summary>Hint 2</summary>

Remove one whitespace character per step and call the type again on what is left, until the pattern no longer matches.

</details>

<details><summary>Hint 3</summary>

Whitespace means more than spaces. Tabs and newlines must go too, and a string made only of whitespace has to end up as the empty string.

</details>

## Solution

The full answer is free on UIRound: [Implement TrimLeft, TrimRight and Trim for string literal types](https://uiround.com/questions/implement-trimleft-trimright-and-trim-for-string-literal-types). It has a tested solution, a step-by-step explanation, edge cases, follow-up questions with model answers, and the tests to run your own code against.

Found a mistake in this question? [Report it](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml&title=%5BQuestion%20933%5D%20).
