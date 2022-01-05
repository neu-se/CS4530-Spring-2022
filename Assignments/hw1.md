---
layout: page
title: Assignment 1
permalink: /assignments/hw1
parent: Assignments
nav_order: 1
---

# Assignment 1: Onboarding **Due Friday Feb 5, 10:00pm EST**{: .label .label-red }

Welcome aboard to the Covey.Town team! We're glad that you're here and ready to join our development team as a new software engineer.
We're building an open source virtual meeting application, and are very happy to see that we have so many new developers who can help make this application a reality.
By the end of the semester, you'll be able to propose, design, implement and test a new feature for our project.
We understand that some of you may have some web development experience, but don't expect that most of you do, and hence, have created
this series of four individual assignments to help you get up to speed with our existing codebase and development environment.

Our lead software engineer, Avery, has developed a prototype for Covey.Town, but in their haste, they neglected to create very good
documentation. 
Covey.Town is a web application that consists of some code that runs in each client's web browser, and also code that runs on
a server.
In this assignment, you will examine some of the existing code that runs in the server, create documentation for it, and add some new functionality to it.

Your assignment will be graded following the rubric embedded in this document, which will consist of the marks "Satisfactory," "Meets Minimum Expectations," and "Not Acceptable."
Based on past experiences, we project that this assignment could take you up to 14 hours (depending on your prior preparation).
We encourage you to start early so that you can post questions on Piazza, make the most use of our TAs' tutorials, and
 attend office hours as necessary in order to ensure that you can reach Satisfactory marks across the board.

The objectives for this first assignment, are to:
* Apply design principles and design patterns skills to real code
* Evaluate naming and other style concerns of an existing codebase
* Write new code in TypeScript 

Parts 1 and 2 of this assignment should be completed in a text editor or word processor, and submitted as a PDF.
Part 3 is a coding task, and you will implement it by modifying the same code that you are documenting in Parts 1 and 2.

**This is an individual assignment.** 

Please post any questions about this assignment on Piazza.

### Change Log
* 1/24: Updated handout file to copy `.env.example` to `.env`. If you already have the handout, you can fix yours by copying the file `.env.example` to `.env`. If you download the handout now, it will already be in position. - JSB
* 1/26: Update broken link to style guide in part 3 rubric - JSB
* 1/27: Clarify that `roomJoinHandler` and `roomSubscriptionHandler` should not "be treated as classes," but more precisely, that you should create a CRC card for each, even though they are not classes. - JSB
* 1/31: If you are having trouble running tests, please update the `jest.config.js` file to read as follows (the `testPathIgnorePatterns` is new) - JSB 
```
module.exports = {
  preset: "ts-jest",
  testEnvironment: "node",
  testPathIgnorePatterns: ['/node_modules/', '/build/'],
};
```
* 2/1: Add submission warning about .tgz vs .zip - JSB
* 2/2: Clarify the checks on `eslint-disable` and `@ts-ignore` that GradeScope now performs, add small hint in Part 3 step 1 that proceeding to step 2 is required to fully implement `CoveyRoomStore` - JSB 
* 2/4: If you are having issues with prettier causing linter errors with arrow function arguments, please update your `.prettierrc` to set `arrowParens: 'always'` - JSB

## Part 1: Documenting the design 
Avery's first prototype implementation of Covey.Town was unreadable spaghetti code that was deemed
"Not Satisfactory" by upper management and was rejected. Avery spent the whole weekend trying to rewrite it following
the design principles covered in Lessons 1.2-1.3. Avery's done an OK job at this, and the code is much better, but it's still missing
design documents. Your first task is to review Avery's code and document the design.

[Download Avery's code for the backend module here]({{ site.baseurl }}{% link assignments/hw1-handout.zip %}).
Extract this archive, run `npm install` in it to fetch all of the dependencies, and open the code in your IDE
to start to get a handle on what Avery did here.
To help you set up a local development environment for this class, we've prepared a tutorial for [setting up a development environment with NodeJS, VSCode and TypeScript]({{ site.baseurl }}{% link tutorials/week1-getting-started.md %}).

Review Avery's code to understand the role of the following types, and create a CRC card for each:
* `PlayerSession` (in `src/types/PlayerSession.ts`)
* `Player` (in `src/types/Player.ts`)
* `CoveyRoomListener` (in `src/types/CoveyRoomListener.ts`)
* `CoveyRoomController` (in `lib/CoveyRoomController.ts`)
* `roomJoinHandler` (in `requestHandlers/CoveyRoomRequestHandlers.ts`) 
* `roomSubscriptionHandler` (in `requestHandlers/CoveyRoomRequestHandlers.ts`)
* `IVideoClient` (in `lib/IVideoClient.ts`)

Please refer to Lesson 2.1 for more details about CRC cards, and examples of CRC cards.

Note that TypeScript functions are first-class entities that can be passed around as objects.
Hence, while traditionally the first 'C' in 'CRC' stands for *Class* (that is, we make CRC cards for *classes*), for this design exercise, we'll consider the two functions `roomJoinHandler` and `roomSubscriptionHandler` as sufficiently important types to each have CRC cards.
In a language like Java, each of these functions would likely end up being a class with a single function --- in TypeScript, we can 
have that single function stand on its own without being part of a class.

Each CRC card should include:
  * the name of the class, function or interface being described
  * a short phrase or sentence describing the responsibility of this class in the context of the entire application
  * the collaborators of the class.  These are the classes which are directly coupled to the class.  In some cases, this list may be open-ended.
  * the portion of the application's state is that is kept in an object of this class (note: methods to not have state)



**Notes about `Promise` and `async/await` in Avery's code**: You'll notice that Avery's code makes use of some types and
keywords that may not be clear to you right now, for instance the `addPlayer` method in `CoveyRoomController`:
```typescript
  async addPlayer(newPlayer: Player): Promise<PlayerSession> {
    const theSession = new PlayerSession(newPlayer);

    this.sessions.push(theSession);
    this.players.push(newPlayer);

    // Create a video token for this user to join this room
    theSession.videoToken = await this.videoClient.getTokenForRoom('demoRoom', newPlayer.id);

    // Notify other players that this player has joined
    this.listeners.forEach((listener) => listener.onPlayerJoined(newPlayer));

    return theSession;
  }
```
We will cover these keywords and their implications in detail [in week 4]({{ site.baseurl }}{% link schedule.md %}). 
For now, it's easiest if you simply ignore these keywords - and when you see a return type of `Promise<Foo>`, 
look past the `Promise` part, and instead simply consider the return type to be `Foo` (in the case of `addPlayer` above, 
consider the return type to simply be a `PlayerSession`).




### Rubric Specification for Part 1

Part 1 will account for 1/3 of your overall grade on this assignment.

To receive a mark of "Satisfactory" for Part 1, your submission must satisfy this specification:
* Include a CRC card for each of the 7 types listed above
* Each card must include a short phrase or two describing the responsibilities of the type in the context of the application
* Each card must include all relevant collaborators (when these can be determined from the codebase)
* Each card must include a description of the state that is kept by objects of the class.

To receive a mark of "Meets minimum expectations", your submission for Part 1 must satisfy this specification:
* Include a CRC card for each of the 7 types listed above
* Each card includes a short phrase or two describing the responsibilities of and state stored by each type, as outlined above. Some of these may be incorrect or irrelevant.
* Most cards include their relevant collaborators, but some may be incorrect


Submissions that do not meet the above criteria will receive no credit for part 1.

## Part 2: Evaluating the design
Using the design principles covered in Lessons 1.2-1.3, please review the following aspects of Avery's design,
and provide a 2-4 sentence response to each of the following questions:

1. Does `CoveyRoomController` follow the principle of *encapsulation*? Explain how it does or does not follow this principle.
1. Avery is currently using a video service called [Twilio Programmable Video](https://www.twilio.com/video) for Covey.Town.
What changes would be necessary to change to a different provider, and how does Avery's design make that easy or hard?
1. Consider the interface `CoveyRoomListener`: this interface is part of an *observer* pattern that Avery designed as part of the 
server code. Describe the role of this pattern in the overall behavior of this system.
1. Avery received a warning for adherence to our project's naming conventions. Thankfully, we think that the 
names of each type are OK, and similarly, that the names for each property are OK.
However, we were concerned with some of the names of local variables within 
Avery's code. Using the rules outlined in our [style guide]({{ site.baseurl }}{% link style.md %}), find three naming violations in local variables in Avery's code and
suggest a better name for each.

The following *optional* question does not count towards your grade, but will be used to help Avery improve their design in the future (which 
might mean that you have an easier time understanding Avery's code!):

What do you think overall of Avery's design? Are there parts that you think could be improved? 

### Rubric Specification for Part 2

Each of the four questions in Part 2 will account for 1/12 of your overall grade for this assignment (that is, Part 2 will account for 1/3 of the overall grade,
with each question weighted evenly).
Each of the four questions will be graded to the following specification:

To receive a mark of "Satisfactory" on a question:
* The answer is factually correct, making use of the design principles and patterns described in class
* The provided explanation is 2-4 sentences, and relates the abstract design concept to the code provided

To receive a mark of "Meets minimum expectations" on a question:
* The answer is factually correct
* The provided explanation is 2-4 sentences and describes the design concept or the code, but does not directly link them together

Answers that do not meet the above criteria will receive no credit for that question.

## Part 3: Extending the design
[Avery's prototype](https://app.covey.town/) *almost* implements the *Minimum Viable Product* (the first deliverable that
satisfies our client's *must have* requirements) for Covey.Town, but lacks one crucial feature: support for multiple rooms.
The Covey.Town prototype currently consists of a single room: all users that connect to Covey.Town are placed on the same map.
Our client is unhappy with this because they really want people to be able to create their own personalized spaces in Covey.Town.
Also, since each room is mapped to a single video room in our video calling system, and each video room is [limited to only 50 participants](https://www.twilio.com/docs/video/programmable-video-limits#room-and-participant-system-limits),
having a single room means that there can only be 50 people on the platform at once.

But, if we can structure the system so that different groups of users join different rooms, then we can satisfy our client's requirement,
while also allowing more than 50 people to use the system at a time, by putting them in different rooms.
Avery started implementing this feature, but never got to finish it: apparently
Avery's frontend code is a huge mess of spaghetti too, and Avery's manager told them to focus on cleaning that up before finishing the product.

While Avery cleans up the frontend code, *your* task will be to implement this last key feature: adding support for multiple rooms.
For this onboarding assignment, you'll modify Avery's backend code to support multiple rooms. Once Avery finishes reorganizing the frontend
code (and you learn about frontend development in class), you'll also modify the frontend to support this feature.

Avery previously created the interface `ICoveyRoomsStore` to define the behavior for a new class, `CoveyRoomsStore`, 
which will hold onto a collection of `CoveyRoomController`s, one per-room. Your coding task is:
1. In the (empty) file `CoveyRoomsStore.ts`, define the new type `CoveyRoomsStore`, which should be a singleton, and
implement the functionality of `ICoveyRoomsStore`. Note that you'll need to proceed to step 2 to fully implement this method.
1. Change the `CoveyRoomController` so that it is no longer a singleton. Instead, there will be one instance of this type
for each room, and those instances will be created by your `CoveyRoomsStore`. Add a public constructor, and a new *private*, *readonly* property, called `_coveyRoomID` (and a [TypeScript-style getter](https://www.typescriptlang.org/docs/handbook/classes.html#accessors)) to 
`CoveyRoomController` so that each room controller knows the name of the room that it is mapped to. Update the call to
`getTokenForRoom` to pass this room ID instead of the hard-coded one.
1. Change the `roomSubscriptionHandler` and `roomJoinHandler` to retrieve the correct `CoveyRoomController` from your
`CoveyRoomsStore`, based on the `coveyRoomID` requested.

Conveniently (or not so conveniently, depending on how you see it), Avery has already written a comprehensive test suite
for this feature. To be deemed acceptable, your code must pass all of these tests, and also have no errors reported by the linter.

You do not need to correct any design flaws that you've identified in Avery's code already (for instance, the naming violations) - when we review your code, we'll know that this was Avery's fault, and have them improve their work for next time!

### Rubric Specification for Part 3
Part 3 will account for 1/3 of your overall grade on this assignment.

To receive a mark of "Satisfactory" for Part 3, your code submission must:
* Pass all included automated tests as reported by `npm test`
* Follow the design specification outlined above
* Conform to our [style guide]({{ site.baseurl }}{% link style.md %}) *and* have no style warnings or errors as reported by `npm run-script lint`
* Have no `@ts-ignore` or `eslint-disable` annotations in the code that you write (the `@ts-ignore` and `eslint-disable` lines that are provided in the handout can stay, and GradeScope will automatically tell you if it finds any new ones that you must remove)

To receive a mark of "Meets minimum expectations" for Part 3, your code submission must:
* Pass all included automated tests as reported by `npm test`
* Have no style errors (may have warnings) as reported by `npm run-script lint`
* Have no `@ts-ignore` or `eslint-disable` annotations in the code that you write (the `@ts-ignore` and `eslint-disable` lines that are provided in the handout can stay, and GradeScope will automatically tell you if it finds any new ones that you must remove)


**Warning**{: .label .label-yellow }  Submissions that do not meet the above criteria will receive no credit for Part 3.
Please note that your code *must* pass all the automated tests that included with the handout, and *must* have no 
errors reported by the style checker that is included with the handout. **Do not wait to test or style check your code until the last minute.**

## Submission Instructions
Submit your assignment in GradeScope. The easiest way to get into GradeScope the first time is to first
[sign into Canvas](https://northeastern.instructure.com/courses/60188) and then click the link on our course for "GradeScope". 
You should then also have the option to create an account on GradeScope (if you don't already have one) so that you can log in to GradeScope directly.
Please contact the instructors immediately if you have difficulty accessing the course on GradeScope.

Parts 1 & 2 should be submitted be compiled into a single PDF and submitted to the assignment "Homework 1 (Parts 1 & 2)" on GradeScope.
Please use GradeScope's "tagging" interface to associate each of your answers with the questions in the rubric.

To submit Part 3: run the command `npm run-script pack` in your project directory, which will create a zip file that is properly
structured for submission. **Important**: GradeScope only accepts .zip files, *not* .tgz files - if you run `npm pack`, you will get a .tgz file, and it will not be accepted by GradeScope. Please be sure to run `npm run-script pack`. Submit this zip file to the assignment "Homework 1 (Part 3)" on GradeScope.
GradeScope will provide you with feedback on your submission, providing a numeric score of:
* 2 (Satisfactory)
* 1 (Meets minimum expecations)
* 0 (Not passing)

You can also view the complete output from running the tests and linter on GradeScope. If you have any doubts
about the autograder, please contact the course staff immediately. In particular: if you are not able to reproduce
and debug test or linter failures on your local machine, **please** ask the TAs for assistance: otherwise you'll waste
an immense amount of time waiting for the autograder to complete, when you could get the same feedback in seconds running
the tests + linter locally.
