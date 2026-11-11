# Restyle a card list with CSS only, without editing the HTML or the existing stylesheet

**Track:** HTML & CSS  
**Level:** Easy  
**Time:** about 30 minutes  

**[Solve it in the browser with tests](https://uiround.com/questions/restyle-a-card-list-with-css-only-without-editing-the-html-or-the-existing-stylesheet)**: free, no account needed.

## Problem

A restaurant list renders the markup below with an existing stylesheet. You may not change either one: your only tool is extra CSS, which the page loads **after** the existing stylesheet. Make the list match the spec.

The markup (the tests render three cards like this one):

```html
<div class="page">
  <section id="restaurants" class="list">
    <article class="card">
      <img class="thumb" src="..." alt="">
      <div class="info">
        <h3 class="name">Spice Route</h3>
        <p class="cuisines">North Indian, Mughlai, Biryani, Kebabs, Rolls, Desserts, Beverages</p>
        <p class="meta"><span class="rating">4.3</span><span class="eta">30 min</span><span class="price">₹400 for two</span></p>
      </div>
      <span class="tag" style="display: none">Promoted</span>
    </article>
    <!-- more cards -->
  </section>
</div>
```

The existing stylesheet:

```css
#restaurants .card { display: block; margin: 0 0 24px; }
#restaurants .card .name { font-size: 22px; color: rgb(200, 0, 0); margin: 0; }
.cuisines { white-space: normal; margin: 0; }
.meta { margin: 0; }
.rating { background: rgb(255, 255, 255) !important; color: black; }
.thumb { width: 100%; }
```

Write your CSS in the `CSS` string. The spec the tests check:

- **Grid**: `.list` is a grid of columns at least `260px` wide, as many as fit in the width of `.page`, sharing the space equally, with a `16px` gap in both directions. At 600px there are two columns, at 400px one.
- **Card**: no outer margin, `12px` padding, a `1px solid rgb(229, 231, 235)` border, `12px` radius, `position: relative`. Inside, a flex row with a `12px` gap.
- **Image**: exactly `72px` by `72px` whatever the card's width (it must not shrink), `object-fit: cover`, `8px` radius.
- **Text column**: takes the rest of the row.
- **Name**: `16px`, colour `rgb(17, 24, 39)`.
- **Cuisines**: one line, cut off with an ellipsis when too long, never wider than the text column.
- **Rating**: background `rgb(22, 163, 74)`, white text (`rgb(255, 255, 255)`).
- **Separators**: the `.eta` and `.price` spans each show ` · ` before them, using a `::before` pseudo-element (content exactly `" · "`).
- **Promoted tag**: visible (any `display` except `none`), `position: absolute` with `top: 8px; left: 8px` against the card (which puts it 9px from the card's outer edge, because offsets start inside the 1px border).

## Starter code

```jsx
const CSS = `
/* Your CSS here */
`;

// The existing stylesheet and markup, as in the problem. Do not change them: the tests use their own copies.
const BASE_CSS = `
#restaurants .card { display: block; margin: 0 0 24px; }
#restaurants .card .name { font-size: 22px; color: rgb(200, 0, 0); margin: 0; }
.cuisines { white-space: normal; margin: 0; }
.meta { margin: 0; }
.rating { background: rgb(255, 255, 255) !important; color: black; }
.thumb { width: 100%; }
`;

const THUMB =
  "data:image/svg+xml," + encodeURIComponent('<svg xmlns="http://www.w3.org/2000/svg" width="300" height="200"><rect width="300" height="200" fill="#f97316"/></svg>');

function Card({ name, cuisines, rating, eta, price }) {
  return (
    <article className="card">
      <img className="thumb" src={THUMB} alt="" />
      <div className="info">
        <h3 className="name">{name}</h3>
        <p className="cuisines">{cuisines}</p>
        <p className="meta">
          <span className="rating">{rating}</span>
          <span className="eta">{eta}</span>
          <span className="price">{price}</span>
        </p>
      </div>
      <span className="tag" style={{ display: "none" }}>
        Promoted
      </span>
    </article>
  );
}

// Preview
function App() {
  return (
    <div className="page" style={{ width: 600 }}>
      <style>{BASE_CSS}</style>
      <style>{CSS}</style>
      <section id="restaurants" className="list">
        <Card name="Spice Route" cuisines="North Indian, Mughlai, Biryani, Kebabs, Rolls, Desserts, Beverages" rating="4.3" eta="30 min" price="₹400 for two" />
        <Card name="Dosa Corner" cuisines="South Indian" rating="4.6" eta="20 min" price="₹200 for two" />
        <Card name="Green Bowl" cuisines="Salads, Healthy Food" rating="4.1" eta="25 min" price="₹350 for two" />
      </section>
    </div>
  );
}
```

## Hints

<details><summary>Hint 1</summary>

Your stylesheet comes after the existing one, so a rule with the same specificity wins. Read each existing selector: an ID in it means you need an ID in yours, and an `!important` declaration can only be beaten by another `!important`.

</details>

<details><summary>Hint 2</summary>

The grid: `repeat(auto-fill, minmax(260px, 1fr))` with a 16px gap gives as many columns as fit. The card: a flex row with the image fixed at 72px (`flex: none`) and the text taking the rest.

</details>

<details><summary>Hint 3</summary>

Ellipsis needs `white-space: nowrap`, `overflow: hidden` and `text-overflow: ellipsis`, and it still fails inside a flex item: the text column has `min-width: auto`, so it grows to fit the line. Give it `min-width: 0`. The hidden badge has an inline `display: none`, which only `!important` can override.

</details>

## Solution

The full answer is free on UIRound: [Restyle a card list with CSS only, without editing the HTML or the existing stylesheet](https://uiround.com/questions/restyle-a-card-list-with-css-only-without-editing-the-html-or-the-existing-stylesheet). It has a tested solution, a step-by-step explanation, edge cases, follow-up questions with model answers, and the tests to run your own code against.

Found a mistake in this question? [Report it](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml&title=%5BQuestion%201248%5D%20).
