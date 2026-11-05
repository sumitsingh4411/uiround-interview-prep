# Turn flat { id, parentId } records into a tree and an adjacency list, and find the nearest matching folder with BFS

**Track:** Strings, objects & algorithms  
**Level:** Easy  
**Time:** about 30 minutes  
**Reported at:** Rippling, Flipkart, Meesho, Walmart Global Tech, Dream11

**[Solve it in the browser with tests](https://uiround.com/questions/turn-flat-id-parentid-records-into-a-tree-and-an-adjacency-list-and-find-the-nearest-matching-folder-with-bfs)**: free, no account needed.

## Problem

APIs and databases return folders, comments and org units as **flat rows** that point to their parent, but a sidebar or file explorer needs a **tree**. Variants of this task have been reported in public interview write-ups many times: build the tree, convert between shapes, order parents before children, and search the tree. Implement these four functions.

The flat records look like `{ id, parentId, name }`, where `parentId: null` marks a root. Records can come in **any order**: a child may appear before its parent.

- **`buildTree(items)`**: return the array of roots. Each node is a new object with the record's fields plus `children: []`, and children appear in the same order as in `items`. Roots appear in input order. Throw an `Error` whose message contains:
  - `"duplicate"` if two records share an `id`;
  - `"parent"` if a `parentId` refers to an id that does not exist;
  - `"cycle"` if some records can never reach a root (for example, `a` is the parent of `b` and `b` of `a`).
- **`parentsFirst(items)`**: the ids ordered so that every parent comes before its children: roots first, then their children, level by level, keeping input order inside a level. Throw the same errors as `buildTree`.
- **`toAdjacencyList(roots)`**: from a nested tree (nodes with `id` and an optional `children` array), return a `Map` from every id to the array of its children's ids. Leaves map to `[]`.
- **`findNearest(roots, startId, predicate)`**: in a nested tree, find the node with `startId`, then return the **nearest descendant** (fewest levels below it) for which `predicate(node)` is truthy. On a tie, return the leftmost one. The start node itself does not count. Return `null` if none matches, and throw if `startId` is not in the tree.

```js
const items = [
  { id: 3, parentId: 1, name: "src" },
  { id: 1, parentId: null, name: "app" },
  { id: 4, parentId: 3, name: "index.js" },
  { id: 2, parentId: 1, name: "README.md" },
];
buildTree(items);
// [{ id: 1, parentId: null, name: "app", children: [
//    { id: 3, parentId: 1, name: "src", children: [{ id: 4, ..., children: [] }] },
//    { id: 2, parentId: 1, name: "README.md", children: [] } ] }]
parentsFirst(items); // [1, 3, 2, 4]
```

## Starter code

```js
function buildTree(items) {
  // Your code here
}

function parentsFirst(items) {
  // Your code here
}

function toAdjacencyList(roots) {
  // Your code here
}

function findNearest(roots, startId, predicate) {
  // Your code here
}
```

## Hints

<details><summary>Hint 1</summary>

Records can arrive in any order, so a parent may not exist yet when its child is read. What lookup would let you ignore the order?

</details>

<details><summary>Hint 2</summary>

Index all nodes by id in one pass, then attach each to its parent's `children`. For nearest-match search and parents-first order, a queue visits level by level.

</details>

<details><summary>Hint 3</summary>

Three different errors need detecting: duplicate ids, a missing parent, and a cycle. A cycle has no root, so detect it by noticing nodes that were never reached from a root.

</details>

## Solution

The full answer is free on UIRound: [Turn flat { id, parentId } records into a tree and an adjacency list, and find the nearest matching folder with BFS](https://uiround.com/questions/turn-flat-id-parentid-records-into-a-tree-and-an-adjacency-list-and-find-the-nearest-matching-folder-with-bfs). It has a tested solution, a step-by-step explanation, edge cases, follow-up questions with model answers, and the tests to run your own code against.

Found a mistake in this question? [Report it](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml&title=%5BQuestion%20711%5D%20).
