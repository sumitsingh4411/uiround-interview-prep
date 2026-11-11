# Build a schema-driven form with conditional fields and pluggable field types

**Track:** Advanced React & rendering  
**Level:** Hard  
**Time:** about 60 minutes  

**[Solve it in the browser with tests](https://uiround.com/questions/build-a-schema-driven-form-with-conditional-fields-and-pluggable-field-types)**: free, no account needed.

## Problem

Onboarding forms change every week, so product wants them defined as JSON on the server and rendered by one generic component. Build `<SchemaForm schema fieldTypes onSubmit />`.

**Schema.** `schema.fields` is an array of `{ name, label, type, required, options, min, max, pattern, message, showIf }`. It is plain JSON, so conditions are data, not functions.

- Built-in `type`s: `"text"`, `"email"`, `"number"`, `"select"` (`options` are strings or `{ value, label }`, plus an empty "Choose…" option) and `"checkbox"`.
- `showIf` decides whether a field is shown: `{ field, equals }`, `{ field, in: [...] }`, `{ field, truthy: true | false }`, `{ all: [...] }`, `{ any: [...] }` and `{ not: condition }`. Conditions only refer to fields listed earlier, and they see **only visible fields' values**, so a field that depends on a hidden field is hidden too.

**Rendering.** Each visible field gets a `<label>` (its `label`) connected to its control with a unique `id`. Hidden fields are not rendered. A field whose type is not registered renders `<p role="alert">` mentioning the type instead of crashing, and is otherwise ignored.

**Plugins.** `fieldTypes` maps extra type names to components, which may also override built-ins. Every field component receives `{ id, field, value, onChange, invalid, describedBy }`, puts `id` on its focusable element, calls `onChange(newValue)`, and sets `aria-invalid` and `aria-describedby` from `invalid` and `describedBy`.

**Values and validation.** Numbers are stored as numbers (`null` when empty), checkboxes as booleans (default `false`). On submit, validate visible fields only, in this order, and show the first failing message for each:

| Rule | Message |
| --- | --- |
| `required` and empty (`undefined`, `null`, `""`, or an unchecked checkbox) | `{label} is required` |
| `email` without the shape `a@b.c` | `Enter a valid email address` |
| `number` below `min` / above `max` | `{label} must be at least {min}` / `{label} must be at most {max}` |
| `pattern` (a regular expression string) does not match | `message`, or `{label} is invalid` |

Errors appear only after the first submit attempt, then update live as the user edits. Each message is linked with `aria-describedby`, its control gets `aria-invalid="true"`, and focus moves to the first invalid field. When everything is valid, call `onSubmit(values)` with exactly the visible, registered fields' values.

## Starter code

```jsx
import { useState } from "react";

function SchemaForm({ schema, fieldTypes = {}, onSubmit }) {
  const [values, setValues] = useState({});
  return (
    <form
      onSubmit={(event) => {
        event.preventDefault();
        onSubmit(values);
      }}
    >
      {schema.fields.map((field) => (
        <div key={field.name}>
          {field.label}
          <input value={values[field.name] ?? ""} onChange={(e) => setValues({ ...values, [field.name]: e.target.value })} />
        </div>
      ))}
      <button type="submit">Continue</button>
    </form>
  );
}

// Preview
const ONBOARDING = {
  fields: [
    { name: "email", label: "Email", type: "email", required: true },
    { name: "accountType", label: "Account type", type: "select", required: true, options: [{ value: "personal", label: "Personal" }, { value: "business", label: "Business" }] },
    { name: "company", label: "Company", type: "text", required: true, showIf: { field: "accountType", equals: "business" } },
    { name: "seats", label: "Seats", type: "number", min: 1, max: 500 },
    { name: "newsletter", label: "Send me product news", type: "checkbox" },
  ],
};
function App() {
  return <SchemaForm schema={ONBOARDING} onSubmit={(values) => console.log("submitted", values)} />;
}
```

## Hints

<details><summary>Hint 1</summary>

Because the schema is plain JSON, conditions are data. Think about how an interpreter walks them and what values it is allowed to see.

</details>

<details><summary>Hint 2</summary>

Compute visible fields in one ordered pass so conditions only see visible values. Use a registry mapping type to component with one shared props contract, and derive errors rather than storing them.

</details>

<details><summary>Hint 3</summary>

Errors appear only after first submit, then live. Hidden fields are neither validated nor submitted, rule order is fixed, and an unregistered type shows an alert instead of crashing.

</details>

## Solution

The full answer is free on UIRound: [Build a schema-driven form with conditional fields and pluggable field types](https://uiround.com/questions/build-a-schema-driven-form-with-conditional-fields-and-pluggable-field-types). It has a tested solution, a step-by-step explanation, edge cases, follow-up questions with model answers, and the tests to run your own code against.

Found a mistake in this question? [Report it](https://github.com/sumitsingh4411/uiround-interview-prep/issues/new?template=content-error.yml&title=%5BQuestion%20197%5D%20).
