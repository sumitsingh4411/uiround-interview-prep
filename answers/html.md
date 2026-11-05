# HTML and accessibility interview questions and answers

The questions interviewers open with, each with a short answer you can say out loud. Every question links to the full answer on [UIRound](https://uiround.com), with examples, comparisons and the follow-up questions that come next. Free, no account needed.

Practise the coding side with tests: [HTML interview questions and answers](https://uiround.com/interview-questions/html).

## Beginner

### div vs span: what is the difference?

`<div>` and `<span>` are both generic containers with no meaning of their own. The difference is how they sit in the page: a `div` is a block-level element that starts on a new line and takes the full available width, while a `span` is inline and flows inside a line of text. Use `div` to group larger chunks for layout and `span` to wrap a few words for styling or scripting.

[Read the full answer](https://uiround.com/answers/div-vs-span-what-is-the-difference)

### How do you hide content visually but keep it for screen readers?

Use a "visually hidden" utility class that shrinks the element to 1 × 1 pixel, clips it and takes it out of the layout, while leaving it in the accessibility tree. Do not use `display: none` or `visibility: hidden`: they hide content from screen readers as well. For a short label on a control, `aria-label` or `aria-labelledby` is often simpler than hidden text.

[Read the full answer](https://uiround.com/answers/how-do-you-hide-content-visually-but-keep-it-for-screen-readers)

### script async vs defer: what is the difference?

Both `async` and `defer` make a classic script download in parallel with HTML parsing instead of blocking it. The difference is when the code runs. A `defer` script runs after the document is parsed, in the order it appears. An `async` script runs as soon as it finishes downloading, in any order, possibly mid-parse.

[Read the full answer](https://uiround.com/answers/script-async-vs-defer-what-is-the-difference)

### What are data attributes in HTML?

Data attributes are custom HTML attributes whose names start with `data-`, such as `data-user-id="42"`. They let you attach small pieces of information to an element without inventing invalid attributes. JavaScript reads them through the element's `dataset` property, and CSS can match them with attribute selectors.

[Read the full answer](https://uiround.com/answers/what-are-data-attributes-in-html)

### What are the new features in HTML5?

HTML5 added semantic structure elements such as `<header>`, `<nav>`, `<article>`, `<section>` and `<footer>`; native `<audio>` and `<video>`; `<canvas>` and inline SVG for graphics; new form input types with built-in validation; custom `data-*` attributes; and JavaScript APIs such as Web Storage, Web Workers, the History API and drag and drop. It also simplified the doctype and defined how browsers parse broken markup.

[Read the full answer](https://uiround.com/answers/what-are-the-new-features-in-html5)

### What does the DOCTYPE do in HTML?

`<!DOCTYPE html>` tells the browser to render the page in standards mode, following the current HTML and CSS specifications. Without it the browser falls back to quirks mode, which imitates the layout bugs of 1990s browsers. The tag is not an element and has no closing tag. Put it first in every HTML document.

[Read the full answer](https://uiround.com/answers/what-does-the-doctype-do-in-html)

### What does the meta viewport tag do?

The meta viewport tag tells mobile browsers how wide to make the layout viewport and what the initial zoom level is. Without it, phones pretend the screen is about 980 CSS pixels wide and shrink the page to fit, so your responsive CSS never sees a narrow screen. Add `width=device-width, initial-scale=1` to every page.

[Read the full answer](https://uiround.com/answers/what-does-the-meta-viewport-tag-do)

### What is semantic HTML, and why does it matter?

Semantic HTML means choosing elements for what the content is, not how it looks: `<button>` for actions, `<nav>` for navigation, `<h2>` for a heading. Browsers, screen readers and search engines read those elements to understand the page. You get keyboard support, accessible names and a usable document outline without writing extra JavaScript or ARIA.

[Read the full answer](https://uiround.com/answers/what-is-semantic-html-and-why-does-it-matter)

## Intermediate

### How do srcset and sizes make images responsive?

`srcset` gives the browser a list of image files with their widths or pixel densities, and `sizes` tells it how wide the image will be shown in the layout. The browser combines that with the screen's pixel density and picks the smallest file that still looks sharp. You offer choices; the browser decides.

[Read the full answer](https://uiround.com/answers/how-do-srcset-and-sizes-make-images-responsive)

### How do you make a website accessible?

To make a website accessible, start with semantic HTML, make every control work with the keyboard, label inputs and images, keep colour contrast high, manage focus when content changes, and respect user preferences like reduced motion. Then test with automated tools, the keyboard alone and a screen reader. Most of the work is not adding code but not breaking what HTML gives you.

[Read the full answer](https://uiround.com/answers/how-do-you-make-a-website-accessible)

### section vs article vs div in HTML: when to use which?

Use `<article>` for content that makes sense on its own, such as a blog post, a comment or a product card. Use `<section>` for a thematic part of a page or article that has its own heading, such as "Ingredients" or "Reviews". Use `<div>` when you only need a wrapper for styling or layout and the grouping has no meaning. If you cannot name a heading for it, it is probably not a section.

[Read the full answer](https://uiround.com/answers/section-vs-article-vs-div-in-html-when-to-use-which)

### What are web components and the shadow DOM?

Web components are a set of browser standards for building reusable, framework-free elements: custom elements define new tags, the shadow DOM hides a component's internal markup and styles, and templates and slots define its structure. You write `<my-card>` once and use it in any page or framework.

[Read the full answer](https://uiround.com/answers/what-are-web-components-and-the-shadow-dom)

### What is ARIA, and when should you use it?

ARIA (Accessible Rich Internet Applications) is a set of HTML attributes that tell assistive technology what an element is and what state it is in. It changes only what screen readers hear, not how the element looks or behaves. Use it when no native HTML element fits, such as a tab list or combobox, and never to replace one that does.

[Read the full answer](https://uiround.com/answers/what-is-aria-and-when-should-you-use-it)

[All topics](../README.md#interview-questions-and-answers-by-topic) · [Report a mistake](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml)
