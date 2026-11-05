# Browser and web interview questions and answers

The questions interviewers open with, each with a short answer you can say out loud. Every question links to the full answer on [UIRound](https://uiround.com), with examples, comparisons and the follow-up questions that come next. Free, no account needed.

Practise the coding side with tests: [JavaScript DOM interview questions](https://uiround.com/interview-questions/dom).

## Beginner

### innerHTML vs textContent vs innerText

`innerHTML` gets or sets an element's contents as an HTML string, so setting it parses markup and can run attacker-controlled code. `textContent` gets or sets the raw text of all descendant nodes, including hidden ones, without parsing or layout. `innerText` returns the text as it is rendered on screen, respecting CSS, which forces a layout. For inserting user text, use `textContent`.

[Read the full answer](https://uiround.com/answers/innerhtml-vs-textcontent-vs-innertext)

### load vs DOMContentLoaded: what is the difference?

`DOMContentLoaded` fires on `document` once the HTML has been fully parsed and all deferred and module scripts have run, without waiting for images, iframes or async scripts. `load` fires on `window` later, once every resource the page depends on has finished loading. Use `DOMContentLoaded` to start working with the DOM, and `load` only when you need images or other resources to be ready.

[Read the full answer](https://uiround.com/answers/load-vs-domcontentloaded-what-is-the-difference)

### localStorage vs sessionStorage vs cookies

`localStorage` keeps string data in the browser until you delete it, `sessionStorage` keeps it only for one tab's session, and cookies are small values the browser sends to the server with matching requests. Use storage for client-only data, and cookies when the server needs the value, especially for sessions with the right flags.

[Read the full answer](https://uiround.com/answers/localstorage-vs-sessionstorage-vs-cookies)

### mouseenter vs mouseover: what is the difference?

`mouseover` fires when the pointer moves onto an element or any of its children, and it bubbles, so a parent hears it again every time the pointer crosses into a child. `mouseenter` fires only once, when the pointer enters the element's area from outside, and it does not bubble. Use `mouseenter` and `mouseleave` for simple hover behaviour, and `mouseover` when you need event delegation.

[Read the full answer](https://uiround.com/answers/mouseenter-vs-mouseover-what-is-the-difference)

### querySelector vs getElementById: which should you use?

`getElementById` looks up one element by its `id` and only exists on `document` (and fragments). `querySelector` takes any CSS selector, works on any element, and returns the first match. `getElementById` is a little faster, but the difference rarely matters, so use `querySelector` for flexibility and `getElementById` when you are looking up a plain ID, especially one you did not write.

[Read the full answer](https://uiround.com/answers/queryselector-vs-getelementbyid-which-should-you-use)

### What is the difference between the window and document objects?

`window` is the global object for a browser tab or iframe: it holds global variables and browser APIs such as timers, `location`, `history`, `localStorage` and the viewport size. `document` is the web page loaded inside that window, the root of the DOM tree you query and change. `window.document` points to the document, and `document.defaultView` points back to the window.

[Read the full answer](https://uiround.com/answers/what-is-the-difference-between-the-window-and-document-objects)

### What is the DOM?

The DOM (Document Object Model) is the browser's in-memory tree of objects that represents an HTML page. JavaScript uses it to read, create, change and remove elements, attributes, text and styles, and to react to events. It is not the HTML source: the DOM is what the browser builds from the source, and it changes as scripts run.

[Read the full answer](https://uiround.com/answers/what-is-the-dom)

### XMLHttpRequest vs fetch: what is the difference?

`XMLHttpRequest` (XHR) is the original event-based API for making HTTP requests from JavaScript. `fetch` is its modern, promise-based replacement: it works with `async`/`await`, streams response bodies, cancels with `AbortController`, and is the only option in service workers. Use `fetch` by default. XHR still has one practical advantage: built-in upload progress events.

[Read the full answer](https://uiround.com/answers/xmlhttprequest-vs-fetch-what-is-the-difference)

## Intermediate

### Feature detection vs user agent sniffing

Feature detection checks whether the browser actually supports an API or CSS feature before using it, for example `if ("IntersectionObserver" in window)` or `@supports (display: grid)`. User agent sniffing reads the browser's name and version from `navigator.userAgent` and guesses what it supports. Feature detection is the reliable choice: it keeps working as browsers update or freeze their user agent strings. Sniffing is only for working around a known engine bug.

[Read the full answer](https://uiround.com/answers/feature-detection-vs-user-agent-sniffing)

### How do search engines handle JavaScript and single-page apps?

Google can run JavaScript. It crawls the HTML, queues the page for rendering in an up-to-date headless Chromium, then indexes the rendered result. That rendering step comes later and can fail or be skipped, and many other crawlers run no JavaScript at all. Pages that matter for search should send their main content in the first HTML response.

[Read the full answer](https://uiround.com/answers/how-do-search-engines-handle-javascript-and-single-page-apps)

### How do web push notifications work?

Web push lets a server send a message to a user's browser even when your site is not open. The page asks for notification permission and subscribes through its service worker, receiving a unique endpoint URL on the browser vendor's push service. Your server sends an encrypted message to that endpoint, the push service delivers it to the browser, and the service worker wakes up and shows a notification.

[Read the full answer](https://uiround.com/answers/how-do-web-push-notifications-work)

### HTTP/1.1 vs HTTP/2 vs HTTP/3: what changed?

HTTP/1.1 sends one request at a time per connection, so browsers open several. HTTP/2 sends many requests at once over a single TCP connection. HTTP/3 does the same over QUIC, which runs on UDP, so one lost packet no longer stalls every request. The meaning of HTTP stays the same: methods, headers and status codes do not change.

[Read the full answer](https://uiround.com/answers/http-1-1-vs-http-2-vs-http-3-what-changed)

### Process vs thread: how do browsers use them?

A process is a running program with its own isolated memory; a thread is a line of execution inside a process that shares its memory. Browsers run several processes, such as the browser UI, a renderer per site, a GPU process and a network process, so a crash or exploit in one page cannot easily reach others. Your JavaScript runs on a renderer's main thread.

[Read the full answer](https://uiround.com/answers/process-vs-thread-how-do-browsers-use-them)

### Reflow vs repaint: what is the difference?

Reflow (also called layout) recalculates the size and position of elements when geometry changes. Repaint redraws pixels when only appearance changes, such as colour. Every reflow is followed by a repaint, but a repaint can happen alone. Reflow is more expensive because it can affect many other elements, so avoid triggering it repeatedly.

[Read the full answer](https://uiround.com/answers/reflow-vs-repaint-what-is-the-difference)

### REST vs GraphQL: what is the difference?

REST exposes many URLs, one per resource, and the server decides the shape of each response. GraphQL exposes one endpoint and a typed schema, and the client sends a query that names exactly the fields it wants. REST is simpler and caches well over HTTP; GraphQL avoids over-fetching and extra round trips for screens that combine many resources.

[Read the full answer](https://uiround.com/answers/rest-vs-graphql-what-is-the-difference)

### WebSockets vs polling vs Server-Sent Events

Polling asks the server for updates on a timer. Server-Sent Events (SSE) keep one HTTP response open so the server can push text events to the browser. WebSockets open a two-way channel for messages in both directions. Use SSE for one-way feeds, WebSockets for chat and games, and polling when updates are rare or the setup must stay simple.

[Read the full answer](https://uiround.com/answers/websockets-vs-polling-vs-server-sent-events)

### What are Web Workers in JavaScript?

A Web Worker is a script that the browser runs on a separate thread, so heavy computation does not block the main thread that handles clicks, scrolling and rendering. The page and the worker cannot share variables or touch each other's objects. They communicate by sending messages with `postMessage`, which copies the data.

[Read the full answer](https://uiround.com/answers/what-are-web-workers-in-javascript)

### What do the options of addEventListener do: capture, once, passive and signal?

The third argument to `addEventListener` can be an options object. `capture: true` runs the listener during the capture phase, before the event reaches its target. `once: true` removes the listener after its first call. `passive: true` promises you will not call `preventDefault`, so scrolling never waits for your code. `signal` takes an `AbortSignal` and removes the listener when the signal aborts.

[Read the full answer](https://uiround.com/answers/what-do-the-options-of-addeventlistener-do-capture-once-passive-and-signal)

### What happens when you type a URL into the browser?

The browser parses the URL, finds the server's IP address through DNS, opens a TCP and TLS connection (or QUIC for HTTP/3), sends an HTTP request, receives HTML, parses it into the DOM, fetches CSS, JavaScript and images, builds the render tree, lays it out, paints pixels and runs scripts. Each step can be skipped by caching or sped up.

[Read the full answer](https://uiround.com/answers/what-happens-when-you-type-a-url-into-the-browser)

### What is a progressive web app (PWA)?

A progressive web app is a normal website that adds a web app manifest and a service worker, so it can be installed on a phone or desktop, open in its own window, load fast on repeat visits and keep working offline. It is built with web technology and delivered over HTTPS, with no app store required.

[Read the full answer](https://uiround.com/answers/what-is-a-progressive-web-app-pwa)

### What is a service worker?

A service worker is a JavaScript file that the browser runs in the background, separate from any page. It sits between your site and the network and can intercept requests, answer them from a cache, and receive push messages. That makes offline support, instant repeat loads and installable web apps possible. It needs HTTPS (except on localhost).

[Read the full answer](https://uiround.com/answers/what-is-a-service-worker)

### What is CORS, and how does it work?

CORS (Cross-Origin Resource Sharing) is a browser mechanism that lets a server say which other origins may read its responses. By default the same-origin policy stops a page on one origin from reading a response from another. The server opts in with headers like `Access-Control-Allow-Origin`, and the browser enforces the result. It is a relaxation of a rule, not a security feature that protects the server.

[Read the full answer](https://uiround.com/answers/what-is-cors-and-how-does-it-work)

### What is MutationObserver used for?

`MutationObserver` lets you react when part of the DOM changes: nodes added or removed, attributes changed, or text edited. You choose what to watch, and the browser calls you back with a batch of mutation records shortly afterwards, as a microtask. It is how you respond to DOM changes you do not control, and it replaced the slow, deprecated mutation events.

[Read the full answer](https://uiround.com/answers/what-is-mutationobserver-used-for)

### What is the critical rendering path?

The critical rendering path is the sequence of steps the browser must complete before it can show the first pixels: build the DOM from HTML, build the CSSOM from CSS, combine them into a render tree, run layout, paint, and composite. Anything that blocks or lengthens those steps delays first paint, so optimising the path means shortening or unblocking them.

[Read the full answer](https://uiround.com/answers/what-is-the-critical-rendering-path)

### What is the difference between an attribute and a property in the DOM?

An attribute is part of the HTML markup: a name with a string value, read with `getAttribute` and set with `setAttribute`. A property is a field on the JavaScript object the browser builds for the element, and it can be any type. Many attributes reflect to properties, but for form controls the attribute holds the initial value and the property holds the current one.

[Read the full answer](https://uiround.com/answers/what-is-the-difference-between-an-attribute-and-a-property-in-the-dom)

### What is the same-origin policy?

The same-origin policy is a browser security rule that stops a script on one origin from reading data from another origin. An origin is the combination of scheme, host and port. It keeps a malicious site from using your logged-in session to read your email or bank pages. Servers and tools like `curl` are not bound by it.

[Read the full answer](https://uiround.com/answers/what-is-the-same-origin-policy)

### What was the 300ms tap delay on mobile and how is it removed?

Mobile browsers used to wait about 300 milliseconds after a tap before firing `click`, to see whether a second tap would follow and turn it into a double-tap zoom. It made web apps feel sluggish next to native ones. Modern browsers skip the wait on any page with a responsive viewport tag (`width=device-width`), and `touch-action: manipulation` removes it for specific elements. Libraries like FastClick are no longer needed.

[Read the full answer](https://uiround.com/answers/what-was-the-300ms-tap-delay-on-mobile-and-how-is-it-removed)

## Advanced

### What is background sync in a service worker?

Background sync lets a page ask its service worker to run a task once the device has a working connection, even if the tab has closed by then. You queue the data in IndexedDB and register a sync tag; the browser fires a `sync` event when connectivity returns and retries if your handler fails. Only Chromium-based browsers support it, so you need a fallback.

[Read the full answer](https://uiround.com/answers/what-is-background-sync-in-a-service-worker)

[All topics](../README.md#interview-questions-and-answers-by-topic) · [Report a mistake](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml)
