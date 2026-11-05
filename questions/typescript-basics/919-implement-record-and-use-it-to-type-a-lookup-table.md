# Implement Record and use it to type a lookup table

**Track:** TypeScript utility types  
**Level:** Easy  
**Time:** about 12 minutes

**[Solve it in the browser with tests](https://uiround.com/questions/implement-record-and-use-it-to-type-a-lookup-table)**: free, no account needed.

## Problem

Lookup tables, such as a label for each status or a colour for each theme, are among the most common objects in a frontend codebase. Typing them with `Record` makes the compiler check that no key is missing.

Write the following without using the built-in `Record`:

- **`MyRecord<K, V>`**: an object type with one property for each key in `K`, all of type `V`. `K` must be a valid property key (a string, number or symbol type), so `MyRecord<boolean, string>` is a compile error. With a wide key such as `string`, the result is an index signature.
- **`StatusLabels`**: the type of a table that maps every `Status` (given in the starter code) to a display string. Build it with `MyRecord`.

```ts
type Flags = MyRecord<"darkMode" | "beta", boolean>; // { darkMode: boolean; beta: boolean }
type Counts = MyRecord<string, number>; // { [key: string]: number }

const labels: StatusLabels = { idle: "Waiting", loading: "Loading…", success: "Done", error: "Failed" };
```

## Starter code

```ts
type Status = "idle" | "loading" | "success" | "error";

type MyRecord<K, V> = any;

type StatusLabels = any;
```

## Hints

<details><summary>Hint 1</summary>

A mapped type does not have to iterate over the keys of an existing object. It can iterate over any union of keys you give it.

</details>

<details><summary>Hint 2</summary>

Constrain the key parameter to `PropertyKey` (string, number or symbol) and give every key the same value type `V`.

</details>

<details><summary>Hint 3</summary>

When every member of the key union is required, a table that forgets one key fails to compile. That is the point of using a union instead of `string`.

</details>

## Solution

The full answer is free on UIRound: [Implement Record and use it to type a lookup table](https://uiround.com/questions/implement-record-and-use-it-to-type-a-lookup-table). It has a tested solution, a step-by-step explanation, edge cases, follow-up questions with model answers, and the tests to run your own code against.

Found a mistake in this question? [Report it](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml&title=%5BQuestion%20919%5D%20).
