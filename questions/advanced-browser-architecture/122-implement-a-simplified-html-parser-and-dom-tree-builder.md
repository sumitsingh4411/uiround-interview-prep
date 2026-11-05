# Implement a simplified HTML parser and DOM tree builder

**Track:** Advanced JS, browser & architecture  
**Level:** Hard  
**Time:** about 75 minutes  
**Reported at:** Amazon

**[Solve it in the browser with tests](https://uiround.com/questions/implement-a-simplified-html-parser-and-dom-tree-builder)**: free, no account needed.

## Problem

Without `DOMParser` or `innerHTML`, implement `parseHTML(html)`, which returns a tree:

- the root is `{ type: "root", children }`;
- elements are `{ type: "element", tag, attributes, children }` (tag names lower-cased, `attributes` a plain object);
- text is `{ type: "text", value }` (with entities decoded).

Also implement `toHTML(node)`, which serialises a tree back to HTML (escaping text and attribute values).

Support:

- nested elements and text;
- attributes with double quotes, single quotes, no quotes, and boolean attributes (`<input disabled>` gives `disabled: ""`);
- void elements (`area, base, br, col, embed, hr, img, input, link, meta, source, track, wbr`) and self-closing syntax (`<x />`);
- comments (`<!-- … -->`) and `<!doctype>` are skipped;
- entities `&amp; &lt; &gt; &quot; &#39;` and numeric `&#NNN;` / `&#xHH;`;
- `<script>` and `<style>` contents are **raw text** (no tags parsed inside);
- error recovery: a closing tag closes the nearest matching open element (implicitly closing anything inside it); stray closing tags are ignored; unclosed elements are closed at the end.

## Starter code

```js
function parseHTML(html) {
  // Your code here
}

function toHTML(node) {
  // Your code here
}
```

## Hints

<details><summary>Hint 1</summary>

Think of the input as a stream of text and tags, and ask what you need to remember about elements that are still open.

</details>

<details><summary>Hint 2</summary>

Parse in one pass with a stack of open elements: each new node attaches to the top of the stack, and closing tags pop it. Void elements and raw-text elements are special cases.

</details>

<details><summary>Hint 3</summary>

A closing tag closes the nearest matching open element and everything inside it, stray closers are ignored, and unclosed elements close at the end. `script` and `style` contents are not parsed.

</details>

## Solution

The full answer is free on UIRound: [Implement a simplified HTML parser and DOM tree builder](https://uiround.com/questions/implement-a-simplified-html-parser-and-dom-tree-builder). It has a tested solution, a step-by-step explanation, edge cases, follow-up questions with model answers, and the tests to run your own code against.

Found a mistake in this question? [Report it](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml&title=%5BQuestion%20122%5D%20).
