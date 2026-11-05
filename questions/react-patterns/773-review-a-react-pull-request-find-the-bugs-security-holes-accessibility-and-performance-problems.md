# Review a React pull request: find the bugs, security holes, accessibility and performance problems

**Track:** React application patterns  
**Level:** Medium  
**Time:** about 25 minutes  
**Reported at:** Salesforce, Walmart Global Tech

**[Solve it in the browser with tests](https://uiround.com/questions/review-a-react-pull-request-find-the-bugs-security-holes-accessibility-and-performance-problems)**: free, no account needed.

## Problem

Code-review rounds have been reported in public interview write-ups: you get a frontend change, leave comments, and are scored on how many real problems you find; a related assessment asks you to debug a React app. Volume is not the goal. A good review finds what would hurt users or the company, says why, and does not bury it under style nits or wrong claims.

A teammate opened this pull request, which adds a comment list to a post page. Comments, author names and websites are written by users.

```text
 1  import { useEffect, useMemo, useState } from "react";
 2
 3  function AuthorBadge({ authorId }) {
 4    const [author, setAuthor] = useState(null);
 5    useEffect(() => {
 6      fetch(`/api/users/${authorId}`).then((r) => r.json()).then(setAuthor);
 7    }, [authorId]);
 8    return <img src={author?.avatarUrl} width={24} height={24} />;
 9  }
10
11  export function CommentList({ postId, currentUser }) {
12    const [comments, setComments] = useState([]);
13    const [query, setQuery] = useState("");
14
15    useEffect(() => {
16      fetch(`/api/posts/${encodeURIComponent(postId)}/comments`)
17        .then((r) => r.json())
18        .then(setComments);
19    }, []);
20
21    const sorted = comments.sort((a, b) => b.likes - a.likes);
22    const visible = useMemo(
23      () => sorted.filter((c) => c.text.toLowerCase().includes(query.trim().toLowerCase())),
24      [sorted, query],
25    );
26
27    function remove(id) {
28      setComments((current) => current.filter((c) => c.id !== id));
29      fetch(`/api/comments/${id}`, { method: "DELETE" });
30    }
31
32    return (
33      <section>
34        <label htmlFor="comment-search">Search comments</label>
35        <input id="comment-search" value={query} onChange={(e) => setQuery(e.target.value)} />
36        <p aria-live="polite">{visible.length} comments</p>
37        <ul>
38          {visible.map((c, i) => (
39            <li key={i}>
40              <AuthorBadge authorId={c.authorId} />
41              <p dangerouslySetInnerHTML={{ __html: c.text }} />
42              <a href={c.website} target="_blank" rel="noopener noreferrer">{c.authorName}</a>
43              {currentUser.id === c.authorId && (
44                <span className="link" onClick={() => remove(c.id)}>Delete</span>
45              )}
46            </li>
47          ))}
48        </ul>
49      </section>
50    );
51  }
```

Record your review in `answers.findings`: an object mapping a **line number** to the kind of problem on that line, one of `"bug"`, `"security"`, `"accessibility"` or `"performance"`.

- Flag the line where the problem is written. If one problem spans two places, flagging either is accepted.
- There are nine problems. Several other lines look suspicious but are correct; flagging them counts against you.
- Style issues (naming, formatting) are not problems here.

## Starter code

```js
const answers = {
  findings: {
    // 12: "bug",
  },
};
```

## Hints

<details><summary>Hint 1</summary>

Read in the order data flows. Comments, names and websites are user-written, so ask at each line what could go wrong with data you don't control.

</details>

<details><summary>Hint 2</summary>

Sort what you find into categories: wrong behaviour, user input escaping into HTML or URLs, things not usable by keyboard or screen reader, and cost that grows with the data.

</details>

<details><summary>Hint 3</summary>

Confirm risky-looking lines are actually broken before flagging them; labelling a fine line is a false finding. Link `href` values from users and effects missing cleanup are worth a close look.

</details>

## Solution

The full answer is free on UIRound: [Review a React pull request: find the bugs, security holes, accessibility and performance problems](https://uiround.com/questions/review-a-react-pull-request-find-the-bugs-security-holes-accessibility-and-performance-problems). It has a tested solution, a step-by-step explanation, edge cases, follow-up questions with model answers, and the tests to run your own code against.

Found a mistake in this question? [Report it](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml&title=%5BQuestion%20773%5D%20).
