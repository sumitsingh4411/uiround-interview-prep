# Build a nested comments component with threaded replies

**Track:** UI machine coding  
**Level:** Medium  
**Time:** about 40 minutes  

**[Solve it in the browser with tests](https://uiround.com/questions/build-a-nested-comments-component-with-threaded-replies)**: free, no account needed.

## Problem

The API returns comments as a **flat** list: `{ id, parentId, author, text }`, where `parentId` is `null` for top-level comments.

Build a **Comments** component with two props:

- `initialComments`: the flat list. It defaults to a short discussion, so the preview shows something.
- `currentUser = "you"`: the author of new replies.

Solve it in React, Vue, Angular or Svelte with the switcher above the editor. Export the component as the default export; in Angular, props are inputs and `onX` callbacks are outputs named `x`.

- Render the threads recursively as nested lists: a `<ul>` of `<li>`s, one per comment, each containing an `<article data-comment-id={id}>` with the author and text, and the comment's replies in a nested `<ul>` inside the same `<li>`.
- Replies are nested to any depth and keep the order of the original list, even when a reply comes **before** its parent in the list. A comment whose parent is not in the list is shown at the top level.
- A **Reply** button opens a `<textarea aria-label="Reply to {author}">` with a **Post reply** button; posting adds a reply by `currentUser` under that comment and closes the box. Empty (or whitespace-only) replies are not posted.
- A comment with replies shows a **Hide replies (n)** button, where `n` is the total number of nested replies (not just direct ones), which toggles to **Show replies (n)**.
- The current user's comments have a **Delete** button. Deleting a comment with replies keeps the thread and shows `[deleted]` instead of the text; deleting one without replies removes it.
- Never change `initialComments` or the objects in it.

Turning the list into a tree is the core of the task: do it in **O(n)**, without searching the list for each comment's parent.

## Starter code

```jsx
import { useMemo, useState } from "react";

const DISCUSSION = [
  { id: 1, parentId: null, author: "Asha", text: "Is useEffect still needed for data fetching?" },
  { id: 2, parentId: 1, author: "Ravi", text: "Prefer a query library or a router loader." },
  { id: 3, parentId: 2, author: "Asha", text: "Even for a tiny app?" },
  { id: 4, parentId: null, author: "Meera", text: "Great question list!" },
];

function buildTree(comments) {
  // Your code here
}

export default function Comments({ initialComments = DISCUSSION, currentUser = "you" }) {
  // Your code here
  return null;
}
```

## Starter code (Vue)

```vue
<script setup>
import { computed, inject, provide, ref } from "vue";

const props = defineProps({
  initialComments: {
    type: Array,
    default: () => [
      { id: 1, parentId: null, author: "Asha", text: "Is useEffect still needed for data fetching?" },
      { id: 2, parentId: 1, author: "Ravi", text: "Prefer a query library or a router loader." },
      { id: 3, parentId: 2, author: "Asha", text: "Even for a tiny app?" },
      { id: 4, parentId: null, author: "Meera", text: "Great question list!" },
    ],
  },
  currentUser: { type: String, default: "you" },
});

function buildTree(comments) {
  // Your code here
}

// Your code here
</script>

<template>
  <ul></ul>
</template>
```

## Starter code (Angular)

```ts
import { Component, computed, input, signal } from "@angular/core";
import { NgTemplateOutlet } from "@angular/common";

type Comment = { id: number; parentId: number | null; author: string; text: string; deleted?: boolean };
type CommentNode = Comment & { replies: CommentNode[] };

const DISCUSSION: Comment[] = [
  { id: 1, parentId: null, author: "Asha", text: "Is useEffect still needed for data fetching?" },
  { id: 2, parentId: 1, author: "Ravi", text: "Prefer a query library or a router loader." },
  { id: 3, parentId: 2, author: "Asha", text: "Even for a tiny app?" },
  { id: 4, parentId: null, author: "Meera", text: "Great question list!" },
];

function buildTree(comments: Comment[]): CommentNode[] {
  // Your code here
  return [];
}

@Component({
  selector: "app-comments",
  imports: [NgTemplateOutlet],
  template: `<ul></ul>`,
})
export default class Comments {
  initialComments = input<Comment[]>(DISCUSSION);
  currentUser = input("you");

  // Your code here
}
```

## Starter code (Svelte)

```svelte
<script>
  const DISCUSSION = [
    { id: 1, parentId: null, author: "Asha", text: "Is useEffect still needed for data fetching?" },
    { id: 2, parentId: 1, author: "Ravi", text: "Prefer a query library or a router loader." },
    { id: 3, parentId: 2, author: "Asha", text: "Even for a tiny app?" },
    { id: 4, parentId: null, author: "Meera", text: "Great question list!" },
  ];

  let { initialComments = DISCUSSION, currentUser = "you" } = $props();

  function buildTree(comments) {
    // Your code here
  }

  // Your code here
</script>

<ul></ul>
```

This question can also be solved in Vue, Angular and Svelte on the site.

## Hints

<details><summary>Hint 1</summary>

The API gives a flat list but the UI is a tree. How do you link each comment to its parent without searching?

</details>

<details><summary>Hint 2</summary>

Index comments by id in one pass and push each into its parent's `replies`; keep the flat list in state and render the tree recursively.

</details>

<details><summary>Hint 3</summary>

The count in `Hide replies (n)` includes all nested replies, not just direct ones. Deleting a comment with replies keeps the thread and shows `[deleted]`; without replies it is removed.

</details>

## Solution

The full answer is free on UIRound: [Build a nested comments component with threaded replies](https://uiround.com/questions/build-a-nested-comments-component-with-threaded-replies). It has a tested solution, a step-by-step explanation, edge cases, follow-up questions with model answers, and the tests to run your own code against.

Found a mistake in this question? [Report it](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml&title=%5BQuestion%2081%5D%20).
