# Networking and HTTP interview questions and answers

The questions interviewers open with, each with a short answer you can say out loud. Every question links to the full answer on [UIRound](https://uiround.com), with examples, comparisons and the follow-up questions that come next. Free, no account needed.

Practise the coding side with tests: [HTTP and networking interview questions for frontend developers](https://uiround.com/interview-questions/web-networking).

## Beginner

### Forward proxy vs reverse proxy: what is the difference?

Both sit between clients and servers and pass requests along; the difference is whom they work for. A **forward proxy** acts on behalf of clients: browsers are configured to send their traffic through it. A **reverse proxy** acts on behalf of servers: clients think they are talking to the website, while the proxy forwards requests to one or more backend servers behind it. CDNs, load balancers and your dev server's `/api` proxy are reverse proxies.

[Read the full answer](https://uiround.com/answers/forward-proxy-vs-reverse-proxy-what-is-the-difference)

### How does DNS resolution work?

DNS resolution turns a hostname such as `shop.example.com` into an IP address. The browser checks its own cache and the operating system's cache, then asks a recursive resolver, which walks the hierarchy from the root servers to the `.com` servers to the domain's authoritative server. Answers are cached for their TTL, so only the first lookup pays the full cost.

[Read the full answer](https://uiround.com/answers/how-does-dns-resolution-work)

### Latency vs bandwidth vs throughput: what is the difference?

Latency is how long data takes to travel, usually measured as round-trip time (RTT): the time for a packet to reach the server and an answer to come back. Bandwidth is the maximum amount of data a link can carry per second. Throughput is the rate you actually achieve, which is limited by both. For most web pages, latency matters more than bandwidth, because loading a page is many small requests, each waiting on round trips.

[Read the full answer](https://uiround.com/answers/latency-vs-bandwidth-vs-throughput-what-is-the-difference)

### TCP vs UDP: what is the difference?

TCP and UDP are the two main transport protocols on the internet. TCP opens a connection, delivers every byte in order and resends anything lost, at the cost of setup time and stalls when packets go missing. UDP just sends independent packets with no connection, ordering or retries, so it is faster and lighter but leaves reliability to the application.

[Read the full answer](https://uiround.com/answers/tcp-vs-udp-what-is-the-difference)

### What are the HTTP request methods and when should you use each?

HTTP methods tell the server what you want to do with a resource. `GET` reads it, `POST` creates something or triggers an action, `PUT` replaces it, `PATCH` changes part of it, and `DELETE` removes it. Two properties matter most: safe methods do not change anything, and idempotent methods can be repeated with the same result, which decides whether a request can be retried or cached.

[Read the full answer](https://uiround.com/answers/what-are-the-http-request-methods-and-when-should-you-use-each)

### What are the parts of a URL? Scheme, host, path, query and fragment

A URL has up to seven parts: the **scheme** (`https:`), optional **user info**, the **host** (`shop.example.com`), an optional **port** (`:8443`), the **path** (`/products/42`), the **query** (`?color=red&size=m`) and the **fragment** (`#reviews`). The scheme, host and port together form the **origin**, which the browser's security model is built on. The fragment never leaves the browser.

[Read the full answer](https://uiround.com/answers/what-are-the-parts-of-a-url)

### What do the common HTTP status codes mean?

An HTTP status code is the three-digit number at the start of every response that says how the request went. The first digit gives the class: 1xx informational, 2xx success, 3xx redirection, 4xx a problem with the request, and 5xx a problem on the server. Frontend code uses it to decide whether to show data, redirect, ask the user to log in, or retry.

[Read the full answer](https://uiround.com/answers/what-do-the-common-http-status-codes-mean)

### What does an HTTP request and response look like?

An HTTP request is a start line with a method and path, a set of `Name: value` headers, a blank line, and an optional body. A response has the same shape: a status line with a code, headers, a blank line and the body. HTTP/1.1 sends this as plain text; HTTP/2 and HTTP/3 send the same fields as binary frames, but the meaning is identical.

[Read the full answer](https://uiround.com/answers/what-does-an-http-request-and-response-look-like)

### What is Base64 encoding and when should you use it?

Base64 is a way to write arbitrary binary data using only 64 plain text characters (`A–Z`, `a–z`, `0–9`, `+` and `/`), so it can travel through systems that expect text, such as JSON, URLs, email and HTTP headers. Every 3 bytes become 4 characters, so the output is about 33% larger. It is an encoding, not encryption: anyone can decode it.

[Read the full answer](https://uiround.com/answers/what-is-base64-encoding-and-when-should-you-use-it)

## Intermediate

### Cache-Control: no-cache vs no-store vs max-age=0

`no-cache` lets caches store the response but requires them to check with the server before every reuse. `no-store` forbids storing it anywhere. `max-age=0` makes it stale immediately, so caches normally revalidate too, but unlike `no-cache` it still allows stale reuse in some cases, such as when the server is unreachable. Use `no-store` for sensitive data and `no-cache` for content that must always be current.

[Read the full answer](https://uiround.com/answers/cache-control-no-cache-vs-no-store-vs-max-age-0)

### How does HTTP caching work? Freshness, validation and 304 responses

HTTP caching lets browsers and CDNs reuse a response instead of downloading it again. A response is **fresh** for as long as `Cache-Control: max-age` (or `Expires`) allows, and a fresh copy is used with no request at all. Once it is **stale**, the cache revalidates it with `If-None-Match` or `If-Modified-Since`, and the server answers `304 Not Modified` with no body if nothing changed.

[Read the full answer](https://uiround.com/answers/how-does-http-caching-work-freshness-validation-and-304-responses)

### How does HTTP compression work? gzip vs Brotli vs Zstandard

HTTP compression is negotiated per request: the browser lists the encodings it understands in `Accept-Encoding`, the server compresses the body with one of them and names it in `Content-Encoding`, and the browser decompresses before your code sees it. gzip works everywhere, Brotli is typically 15 to 25 percent smaller for text and is supported by all modern browsers over HTTPS, and Zstandard offers fast compression with good ratios where browsers support it.

[Read the full answer](https://uiround.com/answers/how-does-http-compression-work-gzip-vs-brotli-vs-zstandard)

### How does HTTPS work? The TLS handshake explained

HTTPS is ordinary HTTP sent inside a TLS connection. Before any HTTP data moves, the TLS handshake does two jobs: it proves the server owns the domain using a certificate signed by a trusted authority, and it lets both sides agree on fresh symmetric keys. Everything afterwards is encrypted and tamper-proof. With TLS 1.3 the handshake takes one round trip.

[Read the full answer](https://uiround.com/answers/how-does-https-work-the-tls-handshake-explained)

### How should a frontend retry failed HTTP requests?

Retry a request only when the failure is likely temporary (a network error, a timeout, `429`, `502`, `503` or `504`) and only when repeating it is safe: `GET`, `PUT` and `DELETE` are idempotent, while `POST` needs an idempotency key. Wait longer between attempts with exponential backoff plus random jitter, respect `Retry-After`, cap the number of attempts, and stop when the user leaves or cancels.

[Read the full answer](https://uiround.com/answers/how-should-a-frontend-retry-failed-http-requests)

### What are HTTP range requests and 206 Partial Content?

A range request asks the server for only part of a resource, with a header like `Range: bytes=0-1023`. A server that supports it answers `206 Partial Content` with just those bytes and a `Content-Range` header saying which part of the whole it sent. Browsers use ranges to seek in video and audio, and download managers use them to resume interrupted downloads instead of starting over.

[Read the full answer](https://uiround.com/answers/what-are-http-range-requests-and-206-partial-content)

### What does the Connection: keep-alive header do?

`Connection: keep-alive` asks the server to leave the TCP connection open after the response, so the next request can reuse it instead of paying for a new DNS lookup, TCP handshake and TLS handshake. It was needed in HTTP/1.0. HTTP/1.1 keeps connections open by default, and HTTP/2 and HTTP/3 forbid the header entirely because connection reuse is built in.

[Read the full answer](https://uiround.com/answers/what-does-the-connection-keep-alive-header-do)

### What happens in the TCP three-way handshake?

The TCP three-way handshake is how a client and server open a connection before any data flows. The client sends SYN with its starting sequence number, the server replies SYN-ACK with its own number and an acknowledgement, and the client answers ACK. It costs one full round trip, so every new connection delays the first HTTP request by at least that much.

[Read the full answer](https://uiround.com/answers/what-happens-in-the-tcp-three-way-handshake)

[All topics](../README.md#interview-questions-and-answers-by-topic) · [Report a mistake](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml)
