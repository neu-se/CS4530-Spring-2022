---
layout: assignment
title: "Assignment 4: Social Sidebar"
permalink: /assignments/hw4
parent: Assignments
nav_order: 3
due_date: "Friday March 25, 10:00pm EST"
submission_notes: Submit on GradeScope 
---

### Change Log
* 3/4/22: Initial Release
* 3/6/22: Clarify that `npm install` and `npm run lint` must be run in the *frontend* directory of the handout.
* 3/16/22: Add note about not using `useEffect` to cache sorted conversation areas, update typo in handout test name about sorting conversation areas
* 3/17/22: Hint that tooltip needs to wrap the heading tag, not the other way around

We're just about ready to call the "conversation areas" feature a wrap, and release it! After using the prototype feature for the past few weeks, our UX designer Calin has suggested that we add some additional functionality so that users can see an overview of the activity going on within the town. Calin has sketched out a simple interface, the "social sidebar," that will list the usernames of all of the players in the town, as well as a listing of all of the occupied conversation areas. This will help users to see where the activity is going on, since the map can be quite large. This feature will also provide useful abstractions for future features that might provide more social features.

A screenshot of the prototype of the social sidebar appears below:
<a target="_top" href="{{ site.baseurl }}{% link /Assignments/HW4/social-sidebar.png %}"><img width="500" alt="Social Sidebar in Covey.Town" src="{{ site.baseurl }}{% link /Assignments/HW4/social-sidebar.png %}" />

The interface is quite utilitarian (with very little effort on aesthetics), but functional. The goal for this assignment is to implement this interface. Calin provided the specification for this assignment to Ripley, who implemented a very thorough test suite, which is provided to you with the handout.

Based on past experiences, we project that this assignment could take you up to 18 hours (depending on your prior preparation). We encourage you to start early so that you can post questions on Piazza, make the most use of our TAs' tutorials, and attend office hours as necessary in order to ensure that you can reach full marks across the board.

To get started, download the [handout zip]({{site.baseurl}}{%link /Assignments/HW4/hw4-handout.tgz %}). 

### Learning Objectives
The objectives of this assignment are to:
* Write React components that make use of state
* Use React hooks
* Analyze Chakra UI documentation and write new code that uses widgets from this library
* Write new TypeScript code that uses asynchronous operations

### Grading
Your code will automatically be evaluated for linter errors and warnings. Submissions that have *any* linter errors will automatically receive a grade of 0. **Do not wait to run the linter until the last minute**.

Your code will be automatically evaluated for functional correctness by the test suite that is distributed in the handout. Your `SocialSidebar` will not be evalauted on its visual aesthetics - it need not look *exactly* like the screenshot above. The tests check only for conformance to the specification, which outlines several key landmark UI elements (e.g. heading levels, list structure).

Your code will be manually evaluated for conformance to our course [style guide]({{ site.baseurl }}{% link style.md %}). This manual evaluation will account for 10% of your total grade on this assignment. We will manually evaluate your code for style on the following rubric:

To receive all 10 points:
* All new names (e.g. for local variables, methods, and properties) follow the naming conventions defined in our style guide
* All public properties and methods (other than getters, setters, and constructors) are documented with JSDoc-style comments that describes what the property/method does, as defined in our style guide
* The code that you write generally follows the design principles discussed in week one. In particular, your design does not have duplicated code that could have been refactored into a shared method.

We will review your code and note each violation of this rubric. We will deduct two points for each violation, up to a maximum of deducting all 10 style points.

### General Requirements
**This is an individual assignment.** 

Please post any questions about this assignment on Piazza. We have many sections of this class, and we want to make sure that we respond to your questions the same way, regardless of which section you are in.

You must implement the entire assignment within the files `PlayersList.tsx` and `ConversationAreasList.tsx`, both within the directory `frontend/src/copmonents/SocialSidebar` in the handout.
Part 1 of the assignemnt  will be contained entirely within `PlayersList.tsx`, and Part 2 within `ConversationAreasList.tsx`.

To pass the tests, your components must have no warnings regarding missing or duplicate [keys](https://reactjs.org/docs/lists-and-keys.html#keys).

You may not make changes to `package.json` or to the lint configuration. You may not use `ts-ignore` or `eslint-disable` annotations.

To run the app locally, please refer to the [README in the Covey.Town repository](https://github.com/neu-se/covey.town).

Your development will take place entirely within the `frontend` directory. You must run `npm install` in the **frontend** directory, and similarly, to run the linter, run `npm run lint` in the **frontend** directory.
  
The handout contains components that are written as *functional components* in React. You might find examples online that refer to class-based components. Functional components use [hooks](https://reactjs.org/docs/hooks-intro.html) to store state and perform effects when the component is first rendered or when it's unmounted from the page. Class-based components use the `setState` method to store state, and callbacks like `componentDidMount`. We covered functional components in class, and this assignment requires you to write functional components. For references on how to maintain state in your component or how to perform actions when a component is first mounted on the page or when it's removed from the page, we suggest that you stick to the [React useState documentation](https://reactjs.org/docs/hooks-state.html) and [React useEffect documentation](https://reactjs.org/docs/hooks-effect.html). There are quite a few resources that instead describe the class-based API, and these might be confusing (since they are not applicable).

The handout contains an automated test suite, which you can run with the command `npm test` from within the `frontend` directory. To run only one of the test suites, run the command `npm test testName` where `testName` is either `PlayersList` or `ConversationAreasList`.
Each test has a prefix `[Tx]`, where `Tx` corresponds to "Task X" in the rubrics below.

## Part 1 - Listing Players in the Town (30 points)
The top part of the SocialSidebar is the `PlayersList`, which lists the current players in the town along with the current town's name and ID. 

Calin provides the following specification:
* The PlayersList component must be implemented in `PlayersList.tsx`
* Town name must be shown in an H2 heading with a Chakra ToolTip that shows the label `Town ID: ${theCurrentTownID}`. **Hint 3/17/22**: For reasons that are not currently known to us, it is necessary to nest the heading inside of the tooltip, rather than the tooltip inside of the heading.
* Players must be listed in an `OrderedList` below that heading, sorted alphabetically by `userName`. The sorting should use an alphanumeric sort (e.g. user `user10` should appear *after* `user9`).
* Each player must be rendered by the (existing) `<PlayerName>` component, that component must be nested within a list item.

Please refer to the `usePlayersInTown` and `useCoveyAppState` hooks to find the relevant state that this component must display.
Your component may not mutate the array returned by `usePlayersInTown`.

Your grade for this part of the assignment will be computed based on the set of tests that you pass. The tests are broken up into tasks; you will receive marks for a task only if you pass all of that task's tests. Tests for later tasks may depend on behavior in earlier tasks - we do not suggest moving on to the next task until you fully satisfy the tests for the earlier tasks.

* Task 1: Display the heading [5 points]
* Task 2: Render player names [10 points]
* Task 3: Sort the players array, and update the display when the list of players changes [15 points]

## Part 2 - Listing Active Conversation Areas in the Town (60 points)
The lower part of the sidebar is the `ConversationAreasList`, which displays a list of "active" conversation areas, along with their occupants.
A conversation area is "active" if its topic is not set to the constant `NO_TOPIC_STRING` that is exported from the `ConverationArea` file.

Calin provides the following specification for the `ConversationAreasList`:
* If there are no active conversation areas, it displays the text "No active conversation areas"
* If there are active areas, it sorts them by label ascending, using an alphanumeric sort (e.g. `area9` appears before `area10`), and displaying only active areas
* Each active conversation area is represented as its own component. You must author and name this component, locating it in the `ConversationAreasList.tsx` file. The component should contain, within a ChakraUI `Box`:
   * A heading (h3), with the text: `{conversationAreaLabel}: {conversationAreaTopic}`,
   * An unordered list of occupants:
      * Occupants are *unsorted*, appearing in the order that they appear in the area's `occupantsByID` array. Each occupant is rendered by a `<PlayerName>` component, nested within a ListItem.
   * An `useEffect` hook, which subscribes to occupancy updates by registering an `onOccupantsChange` listener on the component's corresponding conversation area object:
     * The listener must be registered exaclty once (when the component is mounted), and unregistered exactly once (when the component is unmounted)
     * The listener must update the rendered list of occupants in the conversation area when it receives updates

Please refer to the `usePlayersInTown` and `useConversationAreas` hooks to find the relevant state that this component must display.
Your component may not mutate the arrays returned by these hooks.

Note (added 3/16): To pass the test suite, your components may only use `useEffect` for subscribing to the `onOccupantsChange` event (as described above), and must *not* use any `useEffect` hooks for other purposes. If you would like to *cache* some information (like the list of sorted conversation areas), feel free to use [useMemo](https://reactjs.org/docs/hooks-reference.html#usememo) for this purpose. However, it is also not necessary that you do any such caching. This note is only applicable if you are struggling to determine why your components fail the tests that use mock `useEffect` calls.

Your grade for this part of the assignment will be computed based on the set of tests that you pass. The tests are broken up into tasks; you will receive marks for a task only if you pass all of that task's tests. Tests for later tasks may depend on behavior in earlier tasks - we do not suggest moving on to the next task until you fully satisfy the tests for the earlier tasks.

* Task 1: Display the sorted conversation areas topics and labels [10 points]
* Task 2: Display the usernames of each occupant of each conversation area, sorted [10 points]
* Task 3: Filter out inactive conversation areas [10 points]
* Task 4: Create a useEffect hook that subscribes to `onOccupantsChange` events for the conversation area [10 points]
* Task 5: Update the list of occupants displayed in response to `onOccupantsChange` events [20 points]

Updated handout 3/16 corrects the name of the test on line 169 of `ConversationAreasListTest.test.tsx` from: `When checking usernames, it sorts conversation areas by topic` to: `When checking usernames, it sorts conversation areas by label` (change is only to name of test, contents of test are same)

## Submission Instructions
Submit your assignment in GradeScope. The easiest way to get into GradeScope the first time is to first
[sign into Canvas](https://northeastern.instructure.com/courses/99531) and then click the link on our course for "GradeScope". 
You should then also have the option to create an account on GradeScope (if you don't already have one) so that you can log in to GradeScope directly.
Please contact the instructors immediately if you have difficulty accessing the course on GradeScope.

To submit your assignment: upload *only* the files `frontend/src/components/SocialSidebar/PlayersList.tsx` and `frontend/src/components/SocialSidebar/ConversationsAreasList.tsx`. GradeScope will provide you with feedback on your submission, but note that it will *not* include any marks that will be assigned after we manually grade your submission for code style (it will show 0 for this until it is graded).
