# Write mobile-first media queries for a product listing page: two, three and four columns and a filter sidebar

**Track:** HTML & CSS  
**Level:** Easy  
**Time:** about 25 minutes  

**[Solve it in the browser with tests](https://uiround.com/questions/write-mobile-first-media-queries-for-a-product-listing-page-two-three-and-four-columns-and-a-filter)**: free, no account needed.

## Problem

A fashion store's product listing page must work from a 320px phone to a desktop. Phones show two products per row and hide the filters behind a button; tablets show three; desktops show four next to a filter sidebar that is always visible.

The component **`ProductListing({ products })`** and its markup are given. Write the CSS in the `CSS` string (it is rendered in a `<style>` element inside the component). Do not change the markup or the component.

Rules the tests check. A test cannot resize the browser window, so the tests render the component in boxes of different widths and apply your stylesheet the way a window of that width would: rules inside a `min-width` query apply when the box is at least that wide.

1. **Mobile first.** Styles without a media query are the phone layout. Use only `min-width` media queries: at least two, and no `max-width` queries.
2. **Below 600px**: `.products` is a grid with **2** equal columns and a `12px` gap. The `.filters` sidebar is `display: none` unless it has the class `is-open` (the Filters button toggles it), in which case it is shown above the products and spans their full width. The `.filter-toggle` button is visible.
3. **From 600px**: **3** equal columns with a `16px` gap.
4. **From 1024px**: `.plp-body` puts the filters in a **240px** column on the left and the products on the right, with a **24px** gap; the filters are always shown, the products grid has **4** equal columns with a `16px` gap, and the Filters button is hidden.
5. **Images** fill the width of their card and are always 3:4 (height = width × 4 / 3), whatever the shape of the image file, without stretching it (crop it instead).
6. **Long names** never widen a column: a product with a very long name has the same width as the others, and its name stays on one line ending in an ellipsis.
7. Nothing scrolls sideways, even at 320px.

The breakpoints are exact: 599px has two columns, 600px three, 1023px three, and 1024px four with the sidebar.

## Starter code

```jsx
import { useState } from "react";

const CSS = `
/* Your CSS here */
`;

function ProductListing({ products }) {
  const [open, setOpen] = useState(false);
  return (
    <div className="plp">
      <style>{CSS}</style>
      <div className="plp-bar">
        <h2 className="plp-title">
          Kurtas <span className="plp-count">({products.length} items)</span>
        </h2>
        <button
          type="button"
          className="filter-toggle"
          aria-expanded={open}
          aria-controls="plp-filters"
          onClick={() => setOpen((value) => !value)}
        >
          Filters
        </button>
      </div>
      <div className="plp-body">
        <aside id="plp-filters" className={open ? "filters is-open" : "filters"} aria-label="Filters">
          <fieldset>
            <legend>Size</legend>
            {["S", "M", "L", "XL"].map((size) => (
              <label key={size}>
                <input type="checkbox" name="size" value={size} /> {size}
              </label>
            ))}
          </fieldset>
        </aside>
        <ul className="products" role="list">
          {products.map((p) => (
            <li className="product" key={p.id}>
              <img className="product-image" src={p.image} alt={p.name} width="300" height="400" />
              <h3 className="product-name">{p.name}</h3>
              <p className="product-price">₹{p.price.toLocaleString("en-IN")}</p>
            </li>
          ))}
        </ul>
      </div>
    </div>
  );
}

// Preview
const swatch = (color, w, h) =>
  `data:image/svg+xml,${encodeURIComponent(`<svg xmlns="http://www.w3.org/2000/svg" width="${w}" height="${h}"><rect width="100%" height="100%" fill="${color}"/></svg>`)}`;
const PRODUCTS = [
  { id: 1, name: "Cotton straight kurta", price: 899, image: swatch("#c94f4f", 300, 400) },
  { id: 2, name: "Printed A-line kurta with an extra long name for testing", price: 1299, image: swatch("#4f7ac9", 400, 400) },
  { id: 3, name: "Linen kurta", price: 1599, image: swatch("#4fa36b", 600, 300) },
  { id: 4, name: "Silk festive kurta", price: 2499, image: swatch("#c9a24f", 300, 400) },
  { id: 5, name: "Chikankari kurta", price: 1899, image: swatch("#8a4fc9", 300, 400) },
];
function App() {
  return <ProductListing products={PRODUCTS} />;
}
```

## Hints

<details><summary>Hint 1</summary>

Write the phone layout first with no media query at all, then add `min-width` queries that only change what is different on wider screens.

</details>

<details><summary>Hint 2</summary>

Two breakpoints are enough: at 600px the grid gets a third column, at 1024px the body becomes a grid of a 240px sidebar and the products, the sidebar is always shown and the Filters button is hidden.

</details>

<details><summary>Hint 3</summary>

Use `minmax(0, 1fr)` for the columns, or one long product name stretches its column. And `min-width: 600px` matches at exactly 600px, so do not also write a `max-width: 600px` query.

</details>

## Solution

The full answer is free on UIRound: [Write mobile-first media queries for a product listing page: two, three and four columns and a filter sidebar](https://uiround.com/questions/write-mobile-first-media-queries-for-a-product-listing-page-two-three-and-four-columns-and-a-filter). It has a tested solution, a step-by-step explanation, edge cases, follow-up questions with model answers, and the tests to run your own code against.

Found a mistake in this question? [Report it](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml&title=%5BQuestion%201235%5D%20).
