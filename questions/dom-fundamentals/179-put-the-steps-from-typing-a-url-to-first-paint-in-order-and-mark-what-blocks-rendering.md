# Put the steps from typing a URL to first paint in order, and mark what blocks rendering

**Track:** Browser & DOM fundamentals  
**Level:** Easy  
**Time:** about 20 minutes  

**[Solve it in the browser with tests](https://uiround.com/questions/put-the-steps-from-typing-a-url-to-first-paint-in-order-and-mark-what-blocks-rendering)**: free, no account needed.

## Problem

"What happens when you type a URL and press Enter?" is asked in almost every frontend loop. Answer it in two parts.

**1. Order the steps.** Put these step ids into `answers.order`, in the order each step **starts** for a first visit to `https://shop.example/`:

```js
const STEPS = {
  layout: "Compute the size and position of every box",
  request: "Send the HTTP request for the HTML document",
  tcp: "Open a TCP connection to the server",
  "css-fetch": "Start downloading the stylesheet found in <head>",
  dns: "Resolve shop.example to an IP address",
  paint: "Record the drawing commands for each layer",
  "parse-html": "Start parsing the HTML into the DOM",
  tls: "Negotiate encryption (TLS handshake)",
  composite: "Combine the layers and show the first frame",
  response: "Receive the first bytes of the HTML response",
  style: "Match CSS rules to elements (DOM + CSSOM → render tree)",
};
```

**2. Find what blocks rendering.** The page's `<head>` and `<body>` start like this. Put the file names that delay the **first paint** into `answers.renderBlocking`:

```html
<head>
  <link rel="stylesheet" href="/app.css">
  <link rel="stylesheet" href="/print.css" media="print">
  <link rel="preload" href="/font.woff2" as="font" crossorigin>
  <script src="/analytics.js" async></script>
  <script src="/app.js" defer></script>
  <script src="/legacy.js"></script>
  <script type="module" src="/main.js"></script>
</head>
<body>
  <img src="/hero.jpg" alt="">
```

Use bare file names, for example `"app.css"`.

## Starter code

```js
const answers = {
  order: [],
  renderBlocking: [],
};
```

## Hints

<details><summary>Hint 1</summary>

Split the journey into two phases: getting bytes (name lookup, connection, request) and turning bytes into pixels. Each step needs the previous one's output.

</details>

<details><summary>Hint 2</summary>

For the blocking part, ask of each resource: must the parser stop for it, or would painting without it show the wrong page? Compare `async`, `defer`, `media` and `type=module` behaviours.

</details>

<details><summary>Hint 3</summary>

Mind the traps: a stylesheet fetch starts while parsing, not before the response; a print-only stylesheet and a preload do not block; a classic script without attributes does.

</details>

## Solution

The full answer is free on UIRound: [Put the steps from typing a URL to first paint in order, and mark what blocks rendering](https://uiround.com/questions/put-the-steps-from-typing-a-url-to-first-paint-in-order-and-mark-what-blocks-rendering). It has a tested solution, a step-by-step explanation, edge cases, follow-up questions with model answers, and the tests to run your own code against.

Found a mistake in this question? [Report it](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml&title=%5BQuestion%20179%5D%20).
