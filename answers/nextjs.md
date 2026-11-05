# Next.js interview questions and answers

The questions interviewers open with, each with a short answer you can say out loud. Every question links to the full answer on [UIRound](https://uiround.com), with examples, comparisons and the follow-up questions that come next. Free, no account needed.

Practise the coding side with tests: [Next.js interview questions and answers](https://uiround.com/interview-questions/nextjs).

## Intermediate

### App Router vs Pages Router in Next.js: what is the difference?

The App Router (the `app` folder) is the newer Next.js router, built on React Server Components: components run on the server by default, layouts nest and persist, and data is fetched inside async components. The Pages Router (the `pages` folder) is the original router: every page hydrates in the browser, and server data comes from `getServerSideProps` or `getStaticProps`. Both are supported, and one app can use both.

[Read the full answer](https://uiround.com/answers/app-router-vs-pages-router-in-next-js-what-is-the-difference)

### How does next/image optimize images in Next.js?

The `next/image` component wraps `<img>` and adds four things: it resizes images on demand to the widths a device needs, converts them to a modern format such as WebP when the browser supports it, lazy-loads images that are off screen, and reserves space from `width` and `height` so the page does not shift. It generates `srcset` for you and serves the files through the `/_next/image` endpoint, which caches the results.

[Read the full answer](https://uiround.com/answers/how-does-next-image-optimize-images)

### Server Components vs Client Components in Next.js: what does 'use client' do?

In the Next.js App Router, every component is a Server Component by default: it runs only on the server, can read databases and secrets, and sends no JavaScript to the browser. A Client Component also renders on the server for the first HTML, but its code ships to the browser and hydrates, so it can use state, effects and event handlers. `"use client"` at the top of a file marks the boundary where client code starts.

[Read the full answer](https://uiround.com/answers/server-components-vs-client-components-in-next-js-what-does-use-client-do)

### SSR vs SSG vs ISR in Next.js: when to use which?

SSG (static site generation) renders a page to HTML at build time and serves the same file to everyone. SSR (server-side rendering) renders fresh HTML on every request. ISR (incremental static regeneration) serves a static page but regenerates it in the background after a time limit or an on-demand trigger. Use SSG for content that rarely changes, ISR for content that changes but can be briefly stale, and SSR for per-request or personalised data.

[Read the full answer](https://uiround.com/answers/ssr-vs-ssg-vs-isr-in-next-js-when-to-use-which)

### What are Server Actions in Next.js?

Server Actions are async functions marked with `"use server"` that run on the server but can be called from the browser, usually by passing them to a form's `action` prop. Next.js turns each one into a POST endpoint, so you can mutate data without writing an API route. One round trip can run the mutation, invalidate the cache and return the updated UI. Treat every action as a public endpoint that must check auth.

[Read the full answer](https://uiround.com/answers/what-are-server-actions-in-next-js)

### What is middleware in Next.js, and why is it now called Proxy?

Middleware in Next.js is a single function that runs before a request reaches your routes. Based on the request (path, cookies, headers), it can redirect, rewrite to another route, set request or response headers and cookies, or return a response directly. In Next.js 16 the feature was renamed Proxy: the file is now `proxy.ts` and the exported function `proxy`. The behaviour is the same; `middleware.ts` still works but is deprecated.

[Read the full answer](https://uiround.com/answers/what-is-middleware-in-next-js)

## Advanced

### How does caching work in Next.js?

In Next.js 16 with Cache Components, nothing is cached unless you ask: you add `"use cache"` to an async function or component, set its lifetime with `cacheLife`, tag it with `cacheTag`, and invalidate it with `revalidateTag` or `updateTag`. Cached output becomes part of a prerendered static shell and is reused across requests. Separately, `fetch` calls are memoised within one render, and the browser keeps visited routes in a client cache.

[Read the full answer](https://uiround.com/answers/how-does-caching-work-in-next-js)

[All topics](../README.md#interview-questions-and-answers-by-topic) · [Report a mistake](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml)
