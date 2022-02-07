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
You should include at least 3 different user stories to describe how users will interact with your feature.
Your 3 user stories should cover the key behavior that your feature will provide.
Optionally, you may include *more* user stories, but please be sure to specify which are *must have* user stories and which are *optional* user stories (to be implemented only if you have enough time).

You can find good examples of user stories [on this GSA website](https://tech.gsa.gov/guides/user_story_example/). The most important part of this process is for you to convey to us what feature you plan to build, how you expect it to be used, and once it's built, how you will judge that it is built correctly.


## Submission 
Your project pitch should be 1-2 pages in length, and submitted as a PDF in GradeScope to the assignment "Project Pitch."
Each team submits a single document to GradeScope: when uploading the submission, GradeScope will ask you who your teammates are, and then will associate this submission with every member of your team.
This assignment is due Feb 26. **In order to provide timely feedback on your project pitch, we can not allow any DRC accomodations for late submissions on this assignment.**


## Grading
The project pitch will be graded on the following rubric:

Satisfactory:
* Project pitch includes at least one paragraph that provides a summary of what problem the proposed feature solves and why you are interested in building this feature (more text is permitted, but not necessarily encouraged or required)
* Project pitch includes 3 user stories that cover the key behaviors described in the overall summary. Each user story includes conditions of satisfaction.

Meets minimum expectations:
* Project pitch includes at least one paragraph that provides a summary of what problem the proposed feature solves and why you are interested in building this feature (more text is permitted, but not necessarily encouraged or required)
* Project pitch includes 3 user stories that cover the key behaviors described in the overall summary. User stories might not include conditions of satisfaction.

Submissions that do not meet the criteria for "meets minimum expectations" will receive no credit.
