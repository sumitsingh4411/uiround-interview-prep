# Performance interview questions and answers

The questions interviewers open with, each with a short answer you can say out loud. Every question links to the full answer on [UIRound](https://uiround.com), with examples, comparisons and the follow-up questions that come next. Free, no account needed.

Practise the coding side with tests: [Frontend performance interview questions](https://uiround.com/interview-questions/frontend-performance).

## Beginner

### What is a CDN, and how does it make sites faster?

A content delivery network (CDN) is a network of servers spread across the world that keeps copies of your files close to visitors. A request goes to a nearby edge server instead of your distant origin, so it travels a shorter distance, the connection is set up faster, and your origin handles far less traffic.

[Read the full answer](https://uiround.com/answers/what-is-a-cdn-and-how-does-it-make-sites-faster)

## Intermediate

### How do you improve website performance?

To improve website performance, measure real user data first, then reduce what the browser must download, parse and run. In practice that means smaller images, caching, compression, less JavaScript, early loading of critical resources, and fewer third-party scripts. Fix the largest bottleneck shown by your measurements, not the one you guess.

[Read the full answer](https://uiround.com/answers/how-do-you-improve-website-performance)

### Webpack vs Vite: what is the difference?

Webpack is a configurable bundler that builds your whole dependency graph into bundles before the dev server can serve it. Vite is a dev server and build tool that serves your source as native ES modules in development, so it starts almost instantly, and uses a bundler for the production build. Vite is simpler and faster to start; webpack is more flexible for unusual setups.

[Read the full answer](https://uiround.com/answers/webpack-vs-vite-what-is-the-difference)

### What are Core Web Vitals: LCP, INP and CLS?

Core Web Vitals are three field metrics that measure real user experience: Largest Contentful Paint (LCP) for loading speed, Interaction to Next Paint (INP) for responsiveness, and Cumulative Layout Shift (CLS) for visual stability. A page passes when the 75th percentile of real visits is "good" on all three: LCP at most 2.5 seconds, INP at most 200 milliseconds, CLS at most 0.1.

[Read the full answer](https://uiround.com/answers/what-are-core-web-vitals-lcp-inp-and-cls)

### What is lazy loading for images and routes?

Lazy loading means delaying the download of a resource until it is likely to be needed. For images and iframes, the browser fetches them when they near the viewport. For routes, your app downloads that page's JavaScript only when the user navigates to it. It reduces initial load cost, but never lazy-load the main above-the-fold image.

[Read the full answer](https://uiround.com/answers/what-is-lazy-loading-for-images-and-routes)

### What is time to first byte (TTFB) and how do you reduce it?

Time to first byte (TTFB) is how long it takes from the start of a navigation until the browser receives the first byte of the HTML response. It covers redirects, DNS, the TCP and TLS handshakes, the request travelling to the server, and the server building the response. Nothing on the page can render before it, so a slow TTFB delays every other metric, including LCP.

[Read the full answer](https://uiround.com/answers/what-is-time-to-first-byte-ttfb-and-how-do-you-reduce-it)

### What is tree shaking?

Tree shaking is dead-code elimination for JavaScript modules: a bundler removes exports that nothing imports, so they do not ship in the final bundle. It works because ES module `import` and `export` are static and can be analysed at build time. It needs ES modules, and code that is free of side effects.

[Read the full answer](https://uiround.com/answers/what-is-tree-shaking)

## Advanced

### What is list virtualization (windowing)?

List virtualization, also called windowing, renders only the items currently visible in a scrolling container, plus a small buffer, instead of every item. A list of 100,000 rows then needs only 20 to 40 DOM nodes at any time. This cuts memory, layout and render cost, keeping scrolling and interactions smooth.

[Read the full answer](https://uiround.com/answers/what-is-list-virtualization-windowing)

[All topics](../README.md#interview-questions-and-answers-by-topic) · [Report a mistake](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml)
