# Build a Trello-like Kanban app supporting nested cards, drag-and-drop, undo/redo, and persistence

**Track:** Advanced machine coding & DSA  
**Level:** Hard  
**Time:** about 90 minutes  
**Reported at:** Atlassian

**[Solve it in the browser with tests](https://uiround.com/questions/build-a-trello-like-kanban-app-supporting-nested-cards-drag)**: free, no account needed.

## Problem

Build the state layer of a Trello-like board. (Drag and drop events are covered in #80; here every drag ends in a `moveCard` command.)

`createBoardStore({ storage, key = "board", initial = { columns: [], cards: {} }, historyLimit = 100 })` returns `{ getState, dispatch, undo, redo, canUndo, canRedo, subscribe }`.

State: `{ columns: [{ id, title, cardIds }], cards: { [id]: { id, title, parentId, childIds } } }`. A card either sits in a column (`parentId: null`, listed in the column's `cardIds`) or is **nested** under another card (`parentId` set, listed in that card's `childIds`).

Commands for `dispatch(command)`:

- `{ type: "addColumn", id, title }`
- `{ type: "addCard", id, title, columnId }` or `{ type: "addCard", id, title, parentId }`
- `{ type: "editCard", id, title }`
- `{ type: "moveCard", id, columnId?, parentId?, index }`: move to a column or under a card, at `index` (counted after removing the card from its old place). Moving a card **moves its nested cards with it**. Throw an `Error` when moving a card under itself or its own descendant.
- `{ type: "deleteCard", id }`: delete the card **and all its nested cards**.

Requirements:

- State is immutable: every command produces a new state; untouched columns and cards keep their identity.
- `undo()`/`redo()` step through history; a new command after undo clears the redo history; at most `historyLimit` steps are kept.
- After every change (command, undo, redo) save `{ version: 1, state }` as JSON in `storage` (`getItem`/`setItem`). On creation, load it; if it is missing, corrupt or a different version, use `initial`.
- `subscribe(listener)` calls `listener(state)` after every change and returns an unsubscribe function.

## Starter code

```js
function createBoardStore({ storage, key = "board", initial = { columns: [], cards: {} }, historyLimit = 100 }) {
  // Your code here
}
```

## Hints

<details><summary>Hint 1</summary>

Separate the state transitions from the UI. Every drag and edit becomes a command that turns one state into the next.

</details>

<details><summary>Hint 2</summary>

Write a pure immutable reducer for the commands, including nested-card moves, and wrap it in a store with past and future stacks for undo and redo.

</details>

<details><summary>Hint 3</summary>

Index in `moveCard` is counted after removal, and moving under yourself or a descendant throws. Delete removes the subtree. A new command clears redo, history is capped, and bad stored data falls back to `initial`.

</details>

## Solution

The full answer is free on UIRound: [Build a Trello-like Kanban app supporting nested cards, drag-and-drop, undo/redo, and persistence](https://uiround.com/questions/build-a-trello-like-kanban-app-supporting-nested-cards-drag). It has a tested solution, a step-by-step explanation, edge cases, follow-up questions with model answers, and the tests to run your own code against.

Found a mistake in this question? [Report it](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml&title=%5BQuestion%20145%5D%20).
