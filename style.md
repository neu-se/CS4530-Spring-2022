---
layout: page
title: Code Style
permalink: /policies/style/
parent: Policies
nav_order: 1
---

## Code Style
Programs are easier to read and to understand when they are written in a familiar style and follow standard coding conventions. Most organizations that develop software therefore require programmers to write programs that follow the organization's preferred style and coding conventions. These conventions can be very elaborate.

Many of the guidelines are, in fact, arbitrary. When you are working on a coding project with other developers,
different developers often have preference for slightly different syntax, for instance: should our string literals
be enclosed by single quotes (`'`) or double quotes (`"`)? Should files be indented with spaces or tabs?
In TypeScript, there are often multiple ways to accomplish the same goal, for instance, you could create a new empty array
with the expression `const myArray = new Array()`, or `const myArray = []`. Sometimes there is no difference between
these variants except for how it reads, and other times there may be unintended consequences of making the seemingly correct but
subtly wrong choice. 

Thankfully, it is possible to write automated checkers (and, at times, fixers) for these style violations.
All code that you write for this class will be checked by [ESLint](https://eslint.org), and must be free
of style warnings and errors. Our ESlint rules are derived from [Airbnb's JavaScript Style Guide](https://github.com/airbnb/javascript),
[ESLint's Recommended Rules](https://eslint.org/docs/rules/), [TypeScript/ESLint Recommended Rules](https://www.npmjs.com/package/@typescript-eslint/eslint-plugin),
[React ESLint Rules](https://www.npmjs.com/package/eslint-plugin-react) and [React Hooks ESLint Rules](https://www.npmjs.com/package/eslint-plugin-react-hooks).
We do not suggest studying these lists directly, instead, begin writing code naturally, and allow your IDE's built-in style checker to 
report issues as you find them. The most important rules to get started are:
* Indent using spaces, not tabs; use 2 spaces for each level of indentation
* Enclose all string literals with single quotes, not double
* Variables must be named using lowerCamelCase, types are named using UpperCamelCase. Constants (read-only variables that are assigned a static value once and not reused) must be named using UPPER_CASE_WITH_UNDERSCORES.
* The maximum line length is 100 characters

### Naming
While the linter can automatically flag names that violate camelCase rules, it can not automatically determine that a name is "good" - this is a subjective judgement call.

Please consider the following when choosing names:
* Names should be informative (e.g `lineTooLong()` rather than `checkLineLength()`)
* Names for types are typically nouns or noun phrases. Interface names, however, might be adjectives (e.g. `Serializable`).  Class names may be noun phrases that include the interface name (e.g. `CuckooClock` and `DigitalClock` for classes that implement the interface `Clock`).
* Use noun-like names for functions or methods that return values (e.g. `circleDiameter` rather than `calculateDiameter`). (Exception: simple getters can still have names that begin with `get`).
* Reserve verb-like names for functions that perform actions (e.g. `addItem`).
* Use adjective phrases for predicates when possible (e.g. `line.tooLong()`)
* Variable and property names should be descriptive of what the variable is for, and not be named 
after the type of the variable (which is captured in the variable's type declaration)
* Names for properties that are private must start with a `_`

### Documentation and Comments
All public properties and methods (other than getters, setters, and constructors) must be documented
using [JSDoc-style comments](https://devdocs.io/jsdoc/about-getting-started)
that describes what the property/method does. Example:
```
/** The unique identifier for this player * */
private readonly _id: string;
```

```
/**
 * A handler to process a remote player's subscription to updates for a room
 *
 * @param socket the Socket object that we will use to communicate with the player
 */
```

Consider adding comments within your code to describe non-obvious behavior, or to capture *why* the code is written the 
way that it is. Do not add comments that simply restate what can already be immediately discerned by reading the code.
For example, here is a useful comment:
```
// No valid session exists for this token, hence this client's connection should be terminated
socket.disconnect(true);
return;
```
Here is a useless comment on the same code snippet:
```
// Disconnect the socket
socket.disconnect(true);
return;
```

Comments are for documentation, *not* for keeping track of old code you are no longer using (do not submit commented-out code).
