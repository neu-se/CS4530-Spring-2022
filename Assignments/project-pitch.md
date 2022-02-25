---
layout: page
title: Project Pitch
permalink: /assignments/project-pitch
parent: Assignments
nav_order: 6
---
# Project Pitch **Due Friday Feb 25, 10:00pm EST**{: .label .label-red }
All projects will involve frontend and backend development of a new feature for Covey.Town.
Once teams have been formed, you and your team will decide what kind of new feature you would like to build.
Your feature should be something that can be implemented within the timeframe allotted (5 weeks), and will be implemented in a fork of the main Covey.Town codebase.
You can play with a demo deployment of the app at [app.covey.town](https://app.covey.town), and in the coming weeks, we will provide tutorials and instructions for you to run the entire application in a local development environment, and also to deploy it to the cloud.
Given that you will be up-to-speed on the Covey.Town codebase (and have been introduced to TypeScript, React, NodeJS, and testing frameworks),
and that you will have a team of four, we expect that the feature that you propose will be at least as complex as the feature implemented in the individual
homeworks.

Feel free to look at existing systems like [Gather.Town](https://gather.town), [Sococo](https://www.sococo.com), [Reslash](https://reslash.co), [Screen](https://screen.so/home), and [Gatherly.IO](https://www.gatherly.io) for inspiration on new features to build for Covey.Town. Also see the recent NYTimes Magazine article [The Race to Fix Fix Virtual Meetings](https://www.nytimes.com/2021/02/17/magazine/video-conference.html) ([click here to access through NEU libraries](https://link.ezproxy.neu.edu/login?url=https://www.proquest.com/blogs,-podcasts,- websites/meet-me-at-virtual-water-cooler/docview/2489980229/se-2?accountid=12826])). 
Examples of features that students might propose include:
* Create an interface for uploading and choosing between different maps and avatars (will require also learning to use the [Phaser3 API](https://photonstorm.github.io/phaser3-docs/index.html))
* Create an abstraction to allow for interaction with objects, for instance: walking up to a whiteboard on the map allows players to draw on a shared whiteboard
* Add screenreader support - generate a textual representation of the map and what players can do to interact with it
* Support real persistence: store data in a database (e.g. Postgres + GraphQL), allow users to register and save a profile (e.g. using Auth0) 
* Add direct messaging, image messaging, and other chat features

Please note that multiple teams might choose to propose the same feature, or a variation of that same feature - this is OK.

The course staff will provide feedback on your project to help ensure that the scope of your project is appropriate.

When considering your project, please keep in mind that you will be allowed to publicly post your project online: while your immediate audience for the project is the course staff, if you are ultimately looking for software engineering jobs or co-ops, this project can be a useful piece of your portfolio. If you build a sufficiently maintainable feature (i.e., if your project is particularly well architected and tested), we will also consider pull requests to merge your feature into the main Covey.Town codebase on GitHub, allowing you to also tell recruiters that you have contributed a feature to an open source project on GitHub!

Your project pitch must include:
* An introductory problem statement: what problem in Covey.Town does your (proposed) feature solve? Provide a paragraph (or two) that describes why you are interested in building this feature.
* User stories and acceptance criteria: high level description of how users will interact with your new feature. User stories are requirements specified in the format 
"As a < type of user >, I want < some goal > so that < some reason >."
My conditions of satisfaction are < list of common cases and special cases that must work >.
You should include three different user stories to describe how users will interact with your feature.
Your three user stories should cover the key behavior that your feature will provide.
Do not provide more than three user stories. Your description of user stories and conditions of satisfaction should be between 2-4 pages.
* Preliminary class-level design (CRC cards): Start to think about how you will implement this feature. What are the new classes that you are going to add to the Covey.Town codebase, and how will they interact with any existing classes? Create CRC cards that demonstrate the way that your feature will fit in with the existing codebase, creating cards for your new classes, and for any existing classes that you will anticipate modifying. Please refer to Lesson 2.4 (slides 20-21) for more details about CRC cards, and examples of CRC cards. Attach your CRC cards to your project pitch document. Your CRC cards should be between 2-4 pages.

You can find good examples of user stories [on this GSA website](https://tech.gsa.gov/guides/user_story_example/). The most important part of this process is for you to convey to us what feature you plan to build, how you expect it to be used, and once it's built, how you will judge that it is built correctly.

## Submission 
Your project pitch should be no longer than 8 pages in length (with no more than 4 pages for the user stories and no more than 4 pages for the CRC cards), and submitted as a PDF in GradeScope to the assignment "Project Pitch."
Each team submits a single document to GradeScope: when uploading the submission, GradeScope will ask you who your teammates are, and then will associate this submission with every member of your team.
This assignment is due Feb 25. **In order to provide timely feedback on your project pitch, we can not allow any  late submissions on this assignment. For any DRC accomodations, please check the course policy. **


## Grading
The project pitch will account for 10% of your project grade. The grading of the project pitch is further broken down as follows:

Introductory problem statement (10%):
* Receive full marks if there is a narrative consisting of 4-10 sentences that describes a specific problem that your project aims to solve.
* Receive partial credit if the narrative is present, but does not describe a problem that the project aims to solve

User stories (60%):
Each of the three user stories will account for 20% of your grade on this assignment and graded as follows:
* Receive full marks if:
  * The user story fits the problem statement
  * The user story satisfies the INVEST criteria for good user stories
  * The user story includes conditions of satisfaction that cover the "normal" expected behavior of the feature, and any relevant error cases

CRC cards (30%):
Your CRC cards will be evaluated holistically on the following rubric:
* There are a sufficient number of CRC cards provided such that it will be possible to define realistic engineering tasks to implement your feature based on the classes and their responsibilities.
* The names of new classes must follow our course style guide.
* Each CRC card must include a short phrase or two describing the responsibilities of the type in the context of the application
* Each CRC card must include all relevant collaborators (when these can be determined from the codebase)
* Each CRC card must include a description of the state that is kept by objects of the class.