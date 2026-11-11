# Find the lowest common ancestor in a BST and in a plain binary tree

**Track:** Algorithms & data structures  
**Level:** Medium  
**Time:** about 35 minutes  

**[Solve it in the browser with tests](https://uiround.com/questions/find-the-lowest-common-ancestor-in-a-bst-and-in-a-plain-binary-tree)**: free, no account needed.

## Problem

The **lowest common ancestor** (LCA) of two nodes is the deepest node that has both of them in its subtree. A node counts as its own ancestor, so if one target is inside the other's subtree, the higher one is the LCA.

Nodes are plain objects `{ value, left, right }`, with `left` and `right` set to a node or `null`. Write two functions.

**`lcaBST(root, a, b)`** works on a binary search tree of distinct numbers (smaller values on the left). `a` and `b` are **values**. Return the LCA **node**, or `null` if either value is not in the tree. It must run in O(h) time, where h is the tree's height: the tests run 50,000 queries on a tree with 131,071 nodes.

**`lca(root, nodeA, nodeB)`** works on any binary tree, whose values may repeat. `nodeA` and `nodeB` are **node objects**, compared by identity. Return the LCA node, or `null` if either node is not in the tree.

In both functions the two targets may be the same, the order of the arguments does not matter, and an empty tree (`null`) returns `null`.

```js
//        6
//      /   \
//     2     8
//    / \   / \
//   0   4 7   9
//      / \
//     3   5
lcaBST(root, 3, 5).value; // 4
lcaBST(root, 2, 9).value; // 6
lcaBST(root, 2, 5).value; // 2 (2 is an ancestor of 5)
lcaBST(root, 2, 10); // null (10 is not in the tree)
```

## Starter code

```js
function lcaBST(root, a, b) {
  // Your code here
}

function lca(root, nodeA, nodeB) {
  // Your code here
}
```

## Hints

<details><summary>Hint 1</summary>

In a binary search tree the two values tell you which way to go. In a plain tree they do not, so you have to look in both subtrees.

</details>

<details><summary>Hint 2</summary>

In the BST, walk down while both values are on the same side; the first node where they split is the answer. In a plain tree, a node is the answer when the targets are found in two different places under it.

</details>

<details><summary>Hint 3</summary>

Neither function may assume both targets are present. Confirm the BST values with two short searches from the split node, and in the plain tree count how many targets were actually found.

</details>

## Solution

The full answer is free on UIRound: [Find the lowest common ancestor in a BST and in a plain binary tree](https://uiround.com/questions/find-the-lowest-common-ancestor-in-a-bst-and-in-a-plain-binary-tree). It has a tested solution, a step-by-step explanation, edge cases, follow-up questions with model answers, and the tests to run your own code against.

Found a mistake in this question? [Report it](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml&title=%5BQuestion%20985%5D%20).
