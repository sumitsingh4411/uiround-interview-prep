# Vue interview questions and answers

The questions interviewers open with, each with a short answer you can say out loud. Every question links to the full answer on [UIRound](https://uiround.com), with examples, comparisons and the follow-up questions that come next. Free, no account needed.

Practise the coding side with tests: [Vue interview questions: machine coding in Vue 3](https://uiround.com/interview-questions/vue).

## Beginner

### ref vs reactive in Vue 3: what is the difference?

`ref` wraps any value, including primitives, in an object with a `.value` property, and you can replace that value at any time. `reactive` returns a Proxy of an object, so it only accepts objects, you use it without `.value`, and you must never replace the whole object or destructure it. The Vue docs recommend `ref` as the default because it has fewer ways to lose reactivity.

[Read the full answer](https://uiround.com/answers/ref-vs-reactive-in-vue-3-what-is-the-difference)

### v-if vs v-show in Vue: what is the difference?

`v-if` renders an element only when its condition is true. When the condition turns false, Vue removes the element, destroys any components inside it and runs their unmount hooks. `v-show` always renders the element and toggles its CSS `display` between `none` and its normal value. Use `v-if` for content that rarely changes or is often absent, and `v-show` for content toggled frequently.

[Read the full answer](https://uiround.com/answers/v-if-vs-v-show-in-vue)

### What are Vue lifecycle hooks?

Lifecycle hooks are functions Vue calls at fixed points in a component's life: before and after it is mounted to the DOM, before and after each re-render, and before and after it is removed. In the Composition API you register them with `onMounted`, `onUpdated`, `onUnmounted` and similar functions inside `setup`. Use them to touch the DOM, start timers or subscriptions, and clean those up again.

[Read the full answer](https://uiround.com/answers/what-are-vue-lifecycle-hooks)

## Intermediate

### Composition API vs Options API in Vue: which should you use?

The Options API organises a component by option type: `data`, `computed`, `methods`, `watch` and lifecycle hooks, all reached through `this`. The Composition API organises it by feature, using imported functions such as `ref`, `computed` and `onMounted` inside `setup` or `<script setup>`. Both use the same reactivity system. The Composition API makes logic reuse and TypeScript easier; the Options API is still supported and not deprecated.

[Read the full answer](https://uiround.com/answers/composition-api-vs-options-api-in-vue)

### computed vs watch vs watchEffect in Vue: when to use which?

Use `computed` to derive a value from reactive state: it is cached and recalculated only when its dependencies change, and its getter should have no side effects. Use `watch` to run a side effect, such as a fetch or a write to storage, when specific sources change; it is lazy and gives you old and new values. Use `watchEffect` for a side effect that should run immediately and re-run for whatever reactive state it reads.

[Read the full answer](https://uiround.com/answers/computed-vs-watch-vs-watcheffect-in-vue)

### How do props, emits and v-model work in Vue components?

Props pass data from a parent to a child and are read-only in the child. Emits send events from a child to its parent, which decides how to change its own state. `v-model` on a component combines the two: a `modelValue` prop plus an `update:modelValue` event, which `defineModel` sets up in one line. For data many levels down, `provide` and `inject` skip the components in between.

[Read the full answer](https://uiround.com/answers/how-do-props-emits-and-v-model-work-in-vue-components)

### How does reactivity work in Vue 3?

Vue 3 wraps state in JavaScript Proxies (`reactive`) or in objects with a `.value` getter and setter (`ref`). While an effect runs, such as a component render or a computed getter, every reactive property it reads is recorded as a dependency. That step is called tracking. When one of those properties is written, Vue triggers the effects that read it. Component re-renders are batched and run before the next DOM update.

[Read the full answer](https://uiround.com/answers/how-does-reactivity-work-in-vue-3)

### What is Pinia and how is it different from Vuex?

Pinia is the official state management library for Vue. A store is a reactive object with state, getters and actions, defined with `defineStore` and used in any component through a function such as `useCartStore()`. Compared with Vuex, Pinia has no mutations, no nested modules and no string-based dispatch, and it infers TypeScript types without extra wrappers. Vuex is in maintenance mode and Pinia is recommended for new apps.

[Read the full answer](https://uiround.com/answers/what-is-pinia-and-how-is-it-different-from-vuex)

[All topics](../README.md#interview-questions-and-answers-by-topic) · [Report a mistake](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml)
