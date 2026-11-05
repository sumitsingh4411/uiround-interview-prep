# Security interview questions and answers

The questions interviewers open with, each with a short answer you can say out loud. Every question links to the full answer on [UIRound](https://uiround.com), with examples, comparisons and the follow-up questions that come next. Free, no account needed.

Practise the coding side with tests: [Frontend security interview questions and answers](https://uiround.com/interview-questions/web-security).

## Beginner

### Can you hide an API key in frontend code?

No. Anything the browser receives, whether in a JavaScript bundle, an environment variable inlined at build time, a request header or a WebSocket message, can be read by anyone who opens DevTools. Secret keys must stay on a server you control: the frontend calls your backend, and your backend calls the third-party API with the key. Only keys designed to be public, such as publishable or browser-restricted keys, belong in frontend code.

[Read the full answer](https://uiround.com/answers/can-you-hide-an-api-key-in-frontend-code)

### What do the HttpOnly, Secure, Domain and Path cookie attributes do?

Cookie attributes control who can see a cookie and where it is sent. `HttpOnly` hides it from JavaScript, `Secure` sends it only over HTTPS, `Domain` decides whether subdomains receive it, and `Path` limits it to part of the site. A session cookie should normally be `HttpOnly`, `Secure`, host-only (no `Domain`), `Path=/` and `SameSite=Lax`, ideally with the `__Host-` prefix.

[Read the full answer](https://uiround.com/answers/what-do-the-httponly-secure-domain-and-path-cookie-attributes-do)

### What is reverse tabnabbing and how do you prevent it?

Reverse tabnabbing is an attack where a page you opened in a new tab uses `window.opener` to navigate your original tab to a phishing copy, such as a fake login page. It works because a tab opened by a link or `window.open` can keep a reference to the page that opened it. You prevent it with `rel="noopener"` on links, the `noopener` feature in `window.open`, and the `Cross-Origin-Opener-Policy` header.

[Read the full answer](https://uiround.com/answers/what-is-reverse-tabnabbing-and-how-do-you-prevent-it)

## Intermediate

### How do you use postMessage safely between windows and iframes?

`postMessage` is the safe way for windows from different origins to talk, but only if both sides check who they are talking to. The sender passes an exact `targetOrigin` instead of `"*"`, and the receiver checks `event.origin` against an allowlist, checks `event.source` is the window it expects, validates the message shape, and never treats the data as code or HTML.

[Read the full answer](https://uiround.com/answers/how-do-you-use-postmessage-safely-between-windows-and-iframes)

### How does React protect against XSS, and where does it not?

React protects you from most cross-site scripting by never treating strings as HTML: text in JSX becomes a text node and attribute values are set as plain strings, so `<img onerror=...>` in user data shows up as harmless text. It does not protect you when you opt out (`dangerouslySetInnerHTML`), when a string is a URL or a document (`href`, `srcdoc`), or when code outside React touches the DOM.

[Read the full answer](https://uiround.com/answers/how-does-react-protect-against-xss-and-where-does-it-not)

### How does single sign-on (SSO) work?

Single sign-on (SSO) lets a user log in once at a central identity provider (IdP), such as Okta or Microsoft Entra ID, and then use many separate applications without logging in again. Each app redirects to the IdP, which keeps its own session and sends back a signed proof of identity; the app checks it and starts its own session. The common protocols are OpenID Connect and SAML.

[Read the full answer](https://uiround.com/answers/how-does-single-sign-on-sso-work)

### SameSite cookies: Strict vs Lax vs None explained

`SameSite` tells the browser whether to send a cookie on requests that start from another site. `Strict` never sends it cross-site, `Lax` sends it only on top-level navigations with safe methods such as clicking a link, and `None` always sends it but requires `Secure`. It is the browser's built-in defence against CSRF, and it is what breaks cookies in embedded iframes.

[Read the full answer](https://uiround.com/answers/samesite-cookies-strict-vs-lax-vs-none-explained)

### Session cookies vs JWT: how should a frontend handle auth?

A session cookie holds a random id that the server looks up to find the logged-in user. A JWT is a signed token that carries the user's claims itself. For a browser app, the safest default is an HttpOnly, Secure, SameSite cookie, either a session id or a token. JavaScript then cannot read it, which limits the damage from XSS.

[Read the full answer](https://uiround.com/answers/session-cookies-vs-jwt-how-should-a-frontend-handle-auth)

### Should you store a JWT in localStorage or a cookie?

For browser sessions, prefer an `HttpOnly`, `Secure`, `SameSite` cookie over `localStorage`. JavaScript cannot read an HttpOnly cookie, so a cross-site scripting bug cannot steal the token. `localStorage` is readable by any script on the page, so one XSS flaw exposes every token in it. Cookies need CSRF protection, but that is a smaller, better-understood problem.

[Read the full answer](https://uiround.com/answers/should-you-store-a-jwt-in-localstorage-or-a-cookie)

### Symmetric vs asymmetric encryption: what is the difference?

Symmetric encryption uses one secret key to both encrypt and decrypt, so it is fast but both sides must already share that key. Asymmetric encryption uses a key pair: a public key anyone can have and a private key only the owner keeps. It solves key distribution and enables signatures, but is much slower, so real systems such as HTTPS use asymmetric cryptography to agree on a symmetric key.

[Read the full answer](https://uiround.com/answers/symmetric-vs-asymmetric-encryption-what-is-the-difference)

### What does the iframe sandbox attribute do?

The `sandbox` attribute turns on a set of restrictions for an iframe's content: no scripts, no form submission, no popups, no navigation of the top page, no downloads, and an opaque origin that cannot read cookies or storage. Each `allow-` token switches one restriction back off. Combining `allow-scripts` with `allow-same-origin` on same-origin content cancels the sandbox entirely.

[Read the full answer](https://uiround.com/answers/what-does-the-iframe-sandbox-attribute-do)

### What does the OWASP Top 10 mean for frontend developers?

The OWASP Top 10 is a ranked list of the most common and serious web application security risks, last revised in 2025. Most items are enforced on the server, but the frontend touches all of them: it renders untrusted data (injection), stores tokens (authentication), pulls in npm packages and scripts (supply chain), sends security headers, and must never be the only place access is checked.

[Read the full answer](https://uiround.com/answers/what-does-the-owasp-top-10-mean-for-frontend-developers)

### What is a Content Security Policy (CSP)?

A Content Security Policy (CSP) is an HTTP response header that tells the browser which sources of scripts, styles, images, frames and connections are allowed for a page. Anything not on the list is blocked. Its main job is to limit the damage of cross-site scripting: even if an attacker injects markup, the browser refuses to run their inline script.

[Read the full answer](https://uiround.com/answers/what-is-a-content-security-policy-csp)

### What is an open redirect and how do you prevent it?

An open redirect is a page that sends the user to any URL supplied in a parameter, such as `/login?next=https://evil.example`, without checking it. Attackers use your trusted domain to make phishing links look safe, and in OAuth flows a redirect can leak tokens or codes to them. Prevent it by parsing the URL and redirecting only to your own origin or an allowlist of known destinations.

[Read the full answer](https://uiround.com/answers/what-is-an-open-redirect-and-how-do-you-prevent-it)

### What is clickjacking, and how do you prevent it?

Clickjacking is an attack where a malicious page loads your site in a transparent iframe and places it over something attractive, so the user's click lands on your page without their knowledge. Prevent it by telling browsers which sites may embed your pages, using the `Content-Security-Policy: frame-ancestors` header, with `X-Frame-Options` as a fallback.

[Read the full answer](https://uiround.com/answers/what-is-clickjacking-and-how-do-you-prevent-it)

### What is CSRF, and how do you prevent it?

Cross-site request forgery (CSRF) is an attack where another website makes a logged-in user's browser send a request to your site, and the browser attaches the user's cookies automatically. The server cannot tell the request was not intended. Prevent it with SameSite cookies, anti-CSRF tokens for state-changing requests, and checks of the Origin header.

[Read the full answer](https://uiround.com/answers/what-is-csrf-and-how-do-you-prevent-it)

### What is JSONP and why did CORS replace it?

JSONP (JSON with Padding) was a trick for reading data from another origin before CORS existed. The page added a `<script>` tag pointing at the API with a callback name, and the server replied with JavaScript that called that function with the data. It only supports `GET`, handles errors poorly, and lets the other server run any code on your page.

[Read the full answer](https://uiround.com/answers/what-is-jsonp-and-why-did-cors-replace-it)

### What is Subresource Integrity (SRI)?

Subresource Integrity (SRI) lets you put a cryptographic hash of a file in the `integrity` attribute of a `<script>` or `<link rel="stylesheet">` tag. The browser hashes the file it downloads and refuses to use it if the hashes differ. It protects you when a CDN or third-party host is compromised or changes the file. It only works for files whose exact content you know in advance.

[Read the full answer](https://uiround.com/answers/what-is-subresource-integrity-sri)

### What is XSS, and how do you prevent it?

Cross-site scripting (XSS) is a vulnerability where an attacker gets their JavaScript to run in a victim's browser on your site. It happens when untrusted input is put into the page as code instead of text. Prevent it by encoding output for its context, avoiding raw HTML sinks, sanitising any HTML you must accept, and adding a Content Security Policy as a second layer.

[Read the full answer](https://uiround.com/answers/what-is-xss-and-how-do-you-prevent-it)

### Which HTTP security headers should every site send?

Every site should send `Strict-Transport-Security` to force HTTPS, a `Content-Security-Policy` to limit what scripts can run, `X-Content-Type-Options: nosniff`, a `Referrer-Policy`, frame protection with CSP `frame-ancestors` (or `X-Frame-Options`), and a `Permissions-Policy` that turns off features you do not use. `Cross-Origin-Opener-Policy` and secure cookie attributes round it out. Each header closes a specific class of attack, and none replaces fixing the bug itself.

[Read the full answer](https://uiround.com/answers/which-http-security-headers-should-every-site-send)

## Advanced

### How do you protect a frontend from npm supply-chain attacks?

A supply-chain attack puts malicious code into a package you depend on, so it runs on developer machines, in CI or in your users' browsers. Protect a frontend in layers: commit a lockfile and install with `npm ci`, block install scripts by default, delay brand-new versions, use a scoped private registry, keep dependencies few and reviewed, and limit what shipped code can do with CSP. No single step is enough.

[Read the full answer](https://uiround.com/answers/how-do-you-protect-a-frontend-from-npm-supply-chain-attacks)

### OAuth 2.0 and OpenID Connect explained for frontend developers

OAuth 2.0 is a protocol that lets an app get limited access to an API on a user's behalf without seeing their password. OpenID Connect (OIDC) is a thin layer on top that adds authentication: it tells your app who the user is, through an ID token. For browser apps, use the authorization code flow with PKCE.

[Read the full answer](https://uiround.com/answers/oauth-2-0-and-openid-connect-explained-for-frontend-developers)

### What is prototype pollution and how do you prevent it?

Prototype pollution is a JavaScript vulnerability where attacker-controlled keys such as `__proto__` or `constructor.prototype` make code write to `Object.prototype` instead of a normal object. Every object in the program then inherits the injected property, which can flip security checks, change library defaults or lead to XSS. Prevent it by refusing those keys, using `Map` or null-prototype objects for untrusted data, and validating input shapes.

[Read the full answer](https://uiround.com/answers/what-is-prototype-pollution-and-how-do-you-prevent-it)

[All topics](../README.md#interview-questions-and-answers-by-topic) · [Report a mistake](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml)
