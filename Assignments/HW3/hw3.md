---
layout: assignment
title: "Assignment 3: Testing"
permalink: /assignments/hw3
parent: Assignments
nav_order: 3
due_date: "Friday March 4, 10:00pm EST"
submission_notes: Submit on GradeScope 
---

### Change Log
* 2/18/22: Initial Release

Welcome back! We were very pleased to see your thorough implementation of the new conversation areas API. We are certain that this new design and implementation will be a solid foundation for Covey.Town in the years to come. Before we move on to implement the frontend portion of this feature, however, there is one last matter to discuss: testing.

Unfortunately, we are seeing a recurring pattern with Avery’s development practices: just like Avery's first implementation of covey.town was poorly documented and structured... so are Avery’s tests. While we were able to use Avery’s tests to do some quality assurance on your conversation area implementation, we really do not want to rely on them going forward: they will be a nightmare for maintenance — they violate many of our test design principles, have duplicated code, and are quite brittle. Avery doesn't know how to use mocks or spies very well, and struggles with writing focused unit tests.

Our lead test engineer, Ripley, has done some research into [Jest's Mock and Spy API](https://jestjs.io/docs/es6-class-mocks) and also found the [Jest mock-extended package](https://github.com/marchaos/jest-mock-extended). Ripley would like you to implement a new test suite for the Conversation Area feature - primarily unit tests that make use of mocks and spies. These tests will be quite useful in the coming months and years of the project, and will allow the rest of the team to maintain and enhance the conversation area feature as the overall system needs change. 

We will grade your tests on several criteria:

* Do your tests pass on correct (non-buggy) code? (Checked automatically by GradeScope)
* Do your tests fail when run on buggy code? (Checked automatically by GradeScope)
* Are your tests qualitatively "good," as defined in the week 5 lessons? (Checked manually)

Based on past experiences, we project that this assignment could take you up to 18 hours (depending on your prior preparation). We encourage you to start early so that you can post questions on Piazza, make the most use of our TAs' tutorials, and attend office hours as necessary in order to ensure that you can reach full marks across the board.

To get started, download the [handout zip]({{site.baseurl}}{%link /Assignments/HW3/hw3-handout.zip %}). 

### Learning Objectives
The objectives of this assignment are to:
* Practice writing integration-level tests using TypeScript and Jest
* Practice writing unit tests using TypeScript and Jest, including techniques like spies and mocks
* Gain experience measuring test suite adequacy using mutation testing 

### Grading
Your tests will automatically be evaluated for linter errors and warnings. Submissions that have *any* linter errors will automatically receive a grade of 0. **Do not wait to run the linter until the last minute**.

Your tests will be accepted by the autograder *only* if they have no linter errors/warnings, *and* if they all pass on the non-buggy conversation area implementation that we have provided in the handout. 

Your tests will be graded based on their ability to detect injected faults, using the [stryker mutation tool](https://stryker-mutator.io/docs/stryker-js/introduction/). We have divided the test suite into five units; each unit will be graded inividually based on the number of mutants that your test suite detects. Each unit has a target number of mutants for you to detect, please note that several mutants might be "coupled" (that is, detecting one implies detecting the other), so you may find that a few well-designed tests with strong assertions will detect many mutants. 

You may notice that there could be additional defects that would not be represented by a mutation. Your tests will not be graded on their ability to detect any defects other than the mutations specified.

Your code will be manually evaluated for conformance to our course [style guide]({{ site.baseurl }}{% link style.md %}). This manual evaluation will account for 10% of your total grade on this assignment. We will manually evaluate your code for style on the following rubric:

To receive all 10 points:
* All new names (e.g. for local variables, methods, and properties) follow the naming conventions defined in our style guide
* Your tests should primarily be written as unit tests (directly testing the specified code units), rather than integration tests 
* Your tests are structured in a meaningful manner, with tests for the same unit nested within a shared `describe` block. 
* The code that you write generally follows the design principles discussed in week one. In particular, your design does not have duplicated code that could have been refactored into a shared method, including common test code that could be refactored into a `beforeEach` or `beforeAll`.

We will review your code and note each violation of this rubric. We will deduct two points for each violation, up to a maximum of deducting all 10 style points.

### General Requirements
**This is an individual assignment.** 

Please post any questions about this assignment on Piazza. We have many sections of this class, and we want to make sure that we respond to your questions the same way, regardless of which section you are in.

You must implement all unit tests for `CoveyTownController` in the file `src/client/CoveyTownController.test.ts`, and all other tests in the file `src/client/CoveyTownConversationAPI.test.ts`.
Please feel free to remove or modify any existing conversation area tests in these files. 

You may add additional helper methods to these files, and you may add `beforeEach`, `beforeAll`, `afterEach`, or `afterAll` to these test suites. If you would like to create shared utilities for your tests, you may implement them in the file `src/client/TestUtils.ts`.
Your tests must be fully contained within these test files and `TestUtils.ts` - when they run on GradeScope, we will copy only these files out of your submission to grade.

You may implement your test suite in any order that you would like, but we provide a suggested ordering in the assignment.

A helpful debugging strategy for writing effective tests is to manually inject some fault into the code under test, and then modify your test until it fails on this buggy code. This process is much faster than running a complete mutation analysis. However, if you would like to run the mutation analysis before submitting to GradeScope, you can do so by using the command `npx stryker run` in the project directory. After several minutes, a report will be generated to `reports/mutation/html/index.html` - you can open this report in your browser and see which mutants are not "killed" (the words "detected" and "killed" are used interchangably to refer to mutants that your test suite identifies as bugs; we prefer the term "detected").

You may not make changes to `package.json` or to the lint configuration. You may not use `ts-ignore` or `eslint-disable` annotations.

Jest might also report the following message after running some tests:
```
 Jest did not exit one second after the test run has completed.
 
 This usually means that there are asynchronous operations that weren't stopped in your tests. Consider running Jest with `--detectOpenHandles` to troubleshoot this issue.
 ```

Ripley and Avery can’t figure out how to get rid of this, and it’s mostly harmless. Please ignore it, although if you do happen to figure out a fix, please feel free to let us know so that we can share it with Ripley and Avery!


### Testing CoveyTownController.destroySession (5 points)
[HW2 Part 2.2]({{ site.baseurl }}{% link Assignments/HW2/hw2.md %}#task-22-remove-participants-from-conversation-area-if-they-disconnect-10-points) describes that when a player's session is destroyed, they should be removed from the conversation area. This test is a great place to start. Take a look at the tests at the bottom of `CoveyTownController.test.ts` for examples of unit tests for similar functionality. *Hint:* You may be able to reuse many of the mocking patterns that already exist in this test suite. 

Mutant detection thresholds:
* Detect 1 mutant - 5 points

### Testing CoveyTownController.updatePlayerLocation (30 points)
[HW2 Part 2.1]({{ site.baseurl }}{% link Assignments/HW2/hw2.md %}#part-2-completing-the-townservice-responsibilities-30-points-total) describes the expected behavior for `updatePlayerLocation`. Implement a suite of tests that directly call this method and check for the specification.

Mutant detection thresholds:
* Detect 20 mutants: 10 points
* Detect 24 mutants: 22 points
* Detect 26 mutants: 30 points

### Testing CoveyTownController.addConversationArea (35 points)
[HW2 Part 1.2b]({{ site.baseurl }}{% link Assignments/HW2/hw2.md %}#task-12b-addconversationarea-30-points) describes the expected behavior for `addConversationArea`. Implement a suite of tests that directly call this method and check for the specification.

Mutant detection thresholds:
* Detect 47 mutants: 10 points
* Detect 62 mutants: 25 points
* Detect 70 mutants: 35 points

### Testing CoveyTownRequestHandlers.conversationAreaCreateHandler (10 points)
[HW2 Part 1.2a]({{ site.baseurl }}{% link Assignments/HW2/hw2.md %}#task-12a-conversationareacreatehandler-15-points) describes the expected behavior for `conversationAreaCreateHandler`. Implement a suite of tests that directly call this method and check for the specification. Ripley has porvided a helpful starter test in `CoveyTownConversationAPI.test.ts` - feel free to modify or extend this test (or delete it, if you do not find it useful).

Mutant detection thresholds:
* Detect 3 mutants: 5 points
* Detect 4 mutants: 10 points

### Testing Towns.ts POST route for /towns/:townID/conversationAreas (10 points)
With all of the individual components for adding conversation areas unit tested, your last step is to write some integration tests that can check that the REST service is correctly implemented. You can find an example of this kind of test in `CoveyTownConverationAPI.test.ts`. These tests likely need only check that the error messages and HTTP status codes specified in [HW2 Part 1.1]({{ site.baseurl }}{% link Assignments/HW2/hw2.md %}#task-11-add-an-http-route-to-create-conversation-areas-5-points) are correctly implemented.
Mutant detection thresholds:
* Detect 2 mutants: 10 points


## Submission Instructions
Submit your assignment in GradeScope. The easiest way to get into GradeScope the first time is to first
[sign into Canvas](https://northeastern.instructure.com/courses/99531) and then click the link on our course for "GradeScope". 
You should then also have the option to create an account on GradeScope (if you don't already have one) so that you can log in to GradeScope directly.
Please contact the instructors immediately if you have difficulty accessing the course on GradeScope.

To submit your assignment: upload *only* the files `src/client/CoveyTownController.test.ts`, `src/client/CoveyTownConversationAPI.test` and `src/client/TestUtils.ts`. GradeScope will provide you with feedback on your submission, but note that it will *not* include any marks that will be assigned after we manually grade your submission for code style (it will show 0 for this until it is graded).
