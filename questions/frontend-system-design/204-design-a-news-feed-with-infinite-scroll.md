# Design a news feed with infinite scroll

**Track:** Frontend system design  
**Level:** Hard  
**Time:** about 60 minutes  

**[Design it on the whiteboard](https://uiround.com/questions/design-a-news-feed-with-infinite-scroll)** and check yourself against the rubric: free, no account needed.

## Problem

Design the frontend of a social news feed like Facebook's or LinkedIn's home page:

- an endless list of posts (text, images, videos, link previews, ads), loaded as the user scrolls;
- new posts arriving while the user reads, without moving what they are reading;
- likes and comments that respond instantly;
- composing a new post that appears at the top immediately;
- fast first load on mobile, smooth scrolling after hours of use, and a good experience for keyboard and screen-reader users.

Cover the component structure, data fetching and pagination, the client data model, rendering performance, real-time updates and accessibility.

## Hints

<details><summary>Hint 1</summary>

Clarify scope first: media types, ads, real-time updates, offline, and what numbers (users, posts per session) shape the choices.

</details>

<details><summary>Hint 2</summary>

Use cursor pagination, a normalized entity store so a like updates every copy of a post, server-rendered first page and a virtualized list with variable heights.

</details>

<details><summary>Hint 3</summary>

The interviewer will probe scroll position: incoming posts must sit behind a 'new posts' pill, not shift content. Also cover optimistic like and publish with rollback, and `role=feed` accessibility.

</details>

## Solution

The full answer is free on UIRound: [Design a news feed with infinite scroll](https://uiround.com/questions/design-a-news-feed-with-infinite-scroll). It has a complete design walkthrough, the rubric interviewers score against, and follow-up questions with model answers.

Found a mistake in this question? [Report it](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml&title=%5BQuestion%20204%5D%20).
