# CSS interview questions and answers

The questions interviewers open with, each with a short answer you can say out loud. Every question links to the full answer on [UIRound](https://uiround.com), with examples, comparisons and the follow-up questions that come next. Free, no account needed.

Practise the coding side with tests: [CSS interview questions and answers](https://uiround.com/interview-questions/css).

## Beginner

### CSS transitions vs animations: what is the difference?

A CSS transition animates a property from its old value to its new value when something changes it, such as `:hover` or a class toggle. A CSS animation uses `@keyframes` to define several steps, and it can start by itself, repeat, alternate and run without any trigger. Use transitions for simple state changes and animations for sequences and loops.

[Read the full answer](https://uiround.com/answers/css-transitions-vs-animations-what-is-the-difference)

### display: none vs visibility: hidden vs opacity: 0

`display: none` removes the element from layout and from the accessibility tree, so it takes no space and cannot be clicked or focused. `visibility: hidden` hides it but keeps its space, and it is also unreachable. `opacity: 0` only makes it invisible: it keeps its space, can still be clicked and focused, and screen readers still read it.

[Read the full answer](https://uiround.com/answers/display-none-vs-visibility-hidden-vs-opacity-0)

### em vs rem vs px vs % in CSS

`px` is a fixed CSS pixel. `em` is relative to the font size of the element itself (or its parent, when used in `font-size`), so it compounds when nested. `rem` is relative to the root element's font size, so it stays predictable. `%` is relative to a reference that depends on the property: usually the parent's size, or the parent's font size for `font-size`.

[Read the full answer](https://uiround.com/answers/em-vs-rem-vs-px-vs-percent-in-css)

### Flexbox vs Grid: when to use which?

Use Flexbox to lay items out along one axis, a row or a column, where the content decides how much space each item takes. Use CSS Grid to lay out rows and columns together, where the layout decides where each item goes. Most pages use both: Grid for the page and large regions, Flexbox for the components inside them.

[Read the full answer](https://uiround.com/answers/flexbox-vs-grid-when-to-use-which)

### How do you center a div horizontally and vertically?

The shortest way to centre a div both ways is to make its parent a grid container with `display: grid; place-items: center;`. Flexbox does the same with `display: flex; justify-content: center; align-items: center;`. The parent needs a height for vertical centring to be visible, for example `min-height: 100vh` (or `100dvh`).

[Read the full answer](https://uiround.com/answers/how-do-you-center-a-div-horizontally-and-vertically)

### How do you draw a triangle with CSS?

The modern way is `clip-path: polygon()`: give an element a size and a background, then clip it to three points, such as `clip-path: polygon(50% 0, 100% 100%, 0 100%)`. The classic way is the border trick: a zero-size element with thick borders where three borders are transparent and one is coloured. Both are common in interviews, and tooltip arrows still use the border trick or a rotated square.

[Read the full answer](https://uiround.com/answers/how-do-you-draw-a-triangle-with-css)

### How do you keep an element's aspect ratio in CSS?

Use the `aspect-ratio` property: give the element one dimension, such as `width: 100%`, and set `aspect-ratio: 16 / 9`, and the browser calculates the other. For images and videos, also put `width` and `height` attributes in the HTML so the browser reserves the right space before the file loads, which prevents layout shift. Add `object-fit: cover` when the media must fill a box of a different shape.

[Read the full answer](https://uiround.com/answers/how-do-you-keep-an-elements-aspect-ratio-in-css)

### How does CSS specificity work?

CSS specificity is the score the browser gives each selector to decide which rule wins when several set the same property on one element. It counts IDs first, then classes, attributes and pseudo-classes, then element types. A higher score wins regardless of source order, and when scores tie, the rule that appears later wins.

[Read the full answer](https://uiround.com/answers/how-does-css-specificity-work)

### inline vs block vs inline-block in CSS

A `block` element starts on a new line, stretches to fill its parent's width and accepts width, height and all margins. An `inline` element flows within a line of text, is only as wide as its content and ignores width, height and vertical margins. An `inline-block` element flows like inline but accepts width, height and vertical margins like a block.

[Read the full answer](https://uiround.com/answers/inline-vs-block-vs-inline-block-in-css)

### position relative vs absolute vs fixed vs sticky in CSS

`position: relative` keeps an element in the normal flow and lets you nudge it from its own spot. `absolute` removes it from the flow and places it against the nearest positioned ancestor. `fixed` places it against the viewport so it stays on screen while scrolling. `sticky` acts like relative until a scroll threshold, then sticks like fixed inside its parent.

[Read the full answer](https://uiround.com/answers/position-relative-vs-absolute-vs-fixed-vs-sticky-in-css)

### reset.css vs normalize.css: what is the difference?

A CSS reset strips browser default styles to zero: no margins, no padding, same font size for every heading, no list bullets. normalize.css keeps the useful defaults and only fixes the places where browsers disagree, so headings still look like headings. A reset gives you a blank slate; normalize gives you consistent defaults to build on. Most projects today use a small modern reset that borrows from both.

[Read the full answer](https://uiround.com/answers/reset-css-vs-normalize-css-what-is-the-difference)

### Responsive vs adaptive design: what is the difference?

Responsive design uses one fluid layout that stretches and reflows to fit any screen width, using relative units, flexible grids and media or container queries. Adaptive design detects the device or screen size and serves one of several fixed layouts built for set widths. Responsive is the default today; adaptive ideas survive where a screen needs genuinely different content or components.

[Read the full answer](https://uiround.com/answers/responsive-vs-adaptive-design-what-is-the-difference)

### What are pseudo-classes and pseudo-elements in CSS?

A pseudo-class selects an element that is in a particular state or position, such as `:hover`, `:focus-visible`, `:checked` or `:nth-child(2)`. A pseudo-element selects a part of an element, or creates a virtual one, such as `::before`, `::after`, `::first-line` or `::placeholder`. Pseudo-classes use one colon, pseudo-elements use two.

[Read the full answer](https://uiround.com/answers/what-are-pseudo-classes-and-pseudo-elements-in-css)

### What is mobile-first responsive design with media queries?

Mobile-first responsive design means you write the base CSS for the smallest screens first, then use `min-width` media queries to add layout and detail as the viewport gets wider. The base styles work for everyone, and larger screens only receive overrides. It keeps the CSS smaller and forces you to decide what really matters on a narrow screen.

[Read the full answer](https://uiround.com/answers/what-is-mobile-first-responsive-design-with-media-queries)

### What is the CSS box model?

The CSS box model says every element is a rectangular box made of four layers: content, padding, border and margin, from the inside out. The `width` and `height` you set apply to the content box by default, so padding and border make the element larger. Setting `box-sizing: border-box` makes `width` include padding and border instead.

[Read the full answer](https://uiround.com/answers/what-is-the-css-box-model)

## Intermediate

### Are CSS preprocessors like Sass still worth using?

For many new projects, no: native CSS now covers the features most people used Sass for, including variables (custom properties), nesting, colour mixing, cascade layers and container queries. Sass is still worth it when you rely on mixins, loops and functions that generate CSS at build time, or when a large codebase already uses it. Choose by the features you actually use, not by habit.

[Read the full answer](https://uiround.com/answers/are-css-preprocessors-like-sass-still-worth-using)

### CSS custom properties vs Sass variables

Sass variables (`$color`) exist only at build time: the compiler replaces them with fixed values, and they are gone from the output CSS. CSS custom properties (`--color`) live in the browser. They cascade and inherit, can change at runtime through CSS or JavaScript, and can differ per element. That makes custom properties the right tool for themes and dynamic values.

[Read the full answer](https://uiround.com/answers/css-custom-properties-vs-sass-variables)

### CSS Modules vs CSS-in-JS vs Tailwind: how to choose?

CSS Modules scope plain CSS files to a component at build time. CSS-in-JS writes styles in JavaScript and generates them at runtime or build time. Tailwind composes small utility classes directly in the markup. For most new React projects with server rendering, CSS Modules or Tailwind are the safer defaults, and runtime CSS-in-JS is the one to avoid.

[Read the full answer](https://uiround.com/answers/css-modules-vs-css-in-js-vs-tailwind-how-to-choose)

### CSS pixels vs device pixels: what is the device pixel ratio?

A CSS pixel is an abstract unit of layout, and a device pixel is one physical dot on the screen. The device pixel ratio (`window.devicePixelRatio`) says how many device pixels make up one CSS pixel in each direction: 1 on an old monitor, 2 or 3 on most phones. It decides how sharp images, canvas drawings and thin borders look, and it changes when the user zooms.

[Read the full answer](https://uiround.com/answers/css-pixels-vs-device-pixels-what-is-the-device-pixel-ratio)

### How do you style SVG with CSS?

Inline SVG elements can be styled with ordinary CSS selectors, but they use SVG properties: `fill` for the inside of a shape, `stroke` and `stroke-width` for its outline, plus `opacity` and `transform`. Setting `fill: currentColor` makes an icon follow the surrounding text colour. An SVG loaded through `<img>` or `background-image` cannot be styled by your page's CSS at all, so inline it or use `<use>` when you need control.

[Read the full answer](https://uiround.com/answers/how-do-you-style-svg-with-css)

### What is a block formatting context (BFC) in CSS?

A block formatting context (BFC) is a region of the page where block boxes are laid out on their own, isolated from the outside. A BFC contains its floats, so its height includes them; its children's margins do not collapse through its edges; and it does not slide under neighbouring floats. You create one deliberately with `display: flow-root`, and many other properties create one as a side effect.

[Read the full answer](https://uiround.com/answers/what-is-a-block-formatting-context-bfc-in-css)

### What is margin collapsing in CSS?

Margin collapsing is a CSS rule where the vertical margins of adjacent block boxes merge into a single margin equal to the larger of the two, instead of adding up. It happens between siblings, between a parent and its first or last child, and for empty blocks. It never happens horizontally, and not for flex or grid items.

[Read the full answer](https://uiround.com/answers/what-is-margin-collapsing-in-css)

### What is z-index, and what is a stacking context?

`z-index` sets which overlapping elements paint on top, with higher values in front. It only competes with elements in the same stacking context, which is an isolated group of layers. A child can never rise above something outside its own context, however large its `z-index`, which is why `z-index: 9999` sometimes appears to do nothing.

[Read the full answer](https://uiround.com/answers/what-is-z-index-and-what-is-a-stacking-context)

[All topics](../README.md#interview-questions-and-answers-by-topic) · [Report a mistake](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml)
