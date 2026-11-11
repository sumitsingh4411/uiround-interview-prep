# Design a micro-frontend shell with independent deployment and shared dependency versioning

**Track:** Advanced JS, browser & architecture  
**Level:** Hard  
**Time:** about 60 minutes  

**[Design it on the whiteboard](https://uiround.com/questions/design-a-micro-frontend-shell-with-independent-deployment)** and check yourself against the rubric: free, no account needed.

## Problem

A retail company has five teams (Search, Product, Cart, Checkout, Account) working on one web app. Every release needs all five to coordinate, and one team's bug blocks everyone's deploy.

Design a **micro-frontend shell**: a host application that composes independently built and deployed frontends into one seamless product.

Cover:

- how each team builds, versions and deploys its part without redeploying the others;
- how the shell discovers and loads them at runtime, and what happens when one fails;
- sharing React and the design system without shipping five copies, and handling version mismatches;
- routing, shared state (the signed-in user, the cart count), and communication between parts;
- performance, security and the developer experience.

## Hints

<details><summary>Hint 1</summary>

Before choosing tools, clarify why you are splitting: team autonomy and independent deploys, and what you accept to give up. Also decide how many teams and how many users.

</details>

<details><summary>Hint 2</summary>

Centre the design on a thin shell that loads a runtime manifest of versioned, immutable remote bundles, with shared singletons for React and the design system.

</details>

<details><summary>Hint 3</summary>

Expect questions on failure and drift: a remote that fails to load, version mismatch of shared deps, cross-MFE state and coupling, security of remote code, and rollback by pointing the manifest back.

</details>

## Solution

The full answer is free on UIRound: [Design a micro-frontend shell with independent deployment and shared dependency versioning](https://uiround.com/questions/design-a-micro-frontend-shell-with-independent-deployment). It has a complete design walkthrough, the rubric interviewers score against, and follow-up questions with model answers.

Found a mistake in this question? [Report it](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml&title=%5BQuestion%20128%5D%20).
