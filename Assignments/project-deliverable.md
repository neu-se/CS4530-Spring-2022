---
layout: page
title: Project Final Deliverable
permalink: /Assignments/project-deliverable
parent: Assignments
nav_order: 8
---
# Project: Final Deliverable **Due Friday April 27, 10:00pm EST**{: .label .label-red }
The final project deliverable is the implementation, available in github and (front-end) deployed on Netlify and Heroku, and the documentation turned in to Canvas.

# Project Implementation and Documentation

Your final team deliverable will be a "release" of your new feature on GitHub (with tests), and will be accompanied by a demo.
*Optionally,* you may also open a pull request to merge your feature into our main repository (submitting a pull request, or the pull request being merged into our
codebase is independent of the grade you receive, but provides a platform for more visibility of your project). 

### Change Log
* 3/8: Initial Release 

## Contents

Your final team deliverable will include:
* The implementation of your new feature, deployed to Netlify + Heroku
* Automated tests for your new feature
* A report that describes how to use your new feature
* A 10 minute video that demonstrates the usage of your feature
    
Accompanying the final team deliverable will be an *individual reflection*, which every student must submit on their own, which will include your reflections on:
* The evolution of your project concept: How does the project that you delivered compare to what you originally planned to deliver? What caused these deviations?
* The software engineering processes that you feel could have been improved in your project: were there any processes that in hindsight, you wish that you followed, or wish that you followed better?
* Your team dynamic: Provide a frank (and ideally, blameless) postmortem of your and your teammates collaborative performance and participation. If you had to do this same project over with the same teammates, what would *you* have done differently (or not) to improve your team's overall performance?


### Submission Instructions

#### Code and documentation
 After you have pushed all of your code (and documentation) to your team's GitHub repository, create [a release](https://docs.github.com/en/free-pro-team@latest/github/administering-a-repository/managing-releases-in-a-repository) on GitHub, and apply the tag version `final-submission`. After your release is created, you'll find that there is now a `.zip` that can be downloaded from GitHub that contains a snapshot of your entire repository. Download this zip file, unpack it, and follow the instructions that you provided in your README to double-check that the course staff will be able to run your project (this step is handy to make sure that you didn't forget to include some key files in git). If needed, you can delete the release, make some changes, and re-release up until the deadline. **Submit this zip file to Canvas** under the assignment "Final Project - Code Submission". Submit your report separately to Canvas, under the assignment "Final Project - Report Submission".

#### Project Demo
Details for project demos will be provided during class by each instructor. Some sections will have live (in-person demos) and others may ask you to record a demo video.

#### Individual Reflection
Create a PDF of your reflection, and submit it to Canvas, under the assignment "Project - Individual Reflection".

## Grading
Each project will be graded by the team's assigned TA mentor, and the instructor. We do not expect all teams to deliver all of the features that were initially proposed - in the five week implementation period, there are sure to be some teams that encounter unexpected technical hurdles. As described in greater detail in the rubrics below, teams that have regular communication with their TA regarding their project status may be permitted to variances to their project scope. For most of the submisison components below, we provide two benchmark rubrics: one for a submission that is satisfactory (full marks), and one that would be meeting our minimum expectations (a pass). Rubric for remaining components will be provided by individual instructors. In practice, when grading projects we will assign numeric grades and provide partial credit, using these rubrics as guidelines for those two extremes. Overall project is worth 35% of the course.

In cases where team members do not equally contribute to the project, we may assign different grades to different individuals, up to an extreme of deducting 50% of the marks from a student. We will evaluate each individual's contribution on the basis of a variety of factors, including progress reports at weekly meetings, through inspecting version control history, through each students' self-reflection, and through each students' peer evaluation at the end of the project. We will make regular efforts to collect and distribute this feedback throughout the project --- our ultimate goal is for all students to participate and receive full marks.

### 20% Delivered Features 
We will grade each delivered project holistically using the following two rubrics:

#### Satisfactory:
* Implemented feature satisfies the conditions of satisfaction as proposed by the team and as agreed to by the course staff. If technical difficulties resulted in features being dropped, the project may still earn full marks on "delivered features," but these difficulties must have been documented with the course staff as you encountered them during development.
* Implemented feature is deployed to a publicly-accessible URL, using Netlify and Heroku for hosting as outlined in Activity 8.1
* Implemented feature contains no ESLint warnings or errors; does not include any eslint-disable or ts-ignore flags

#### Meets minimum requirements:
* Implemented feature largely satisfies acceptance criteria as proposed by the team, but may not meet the course staff’s interpretation of those criteria.
* Implemented feature is deployed to a publicly-accessible URL, using Netlify and Heroku for hosting as outlined in Activity 8.1
* The implementation may have some obvious flaws, but largely works without crashing.
* Implemented feature does not include any eslint-disable or ts-ignore flag

### 10% Testing
The project must include evidence of testing. Ideally, all new features will be accompanied by fully automated tests, but in some circumstances (particularly when engaging with Phaser, the game library), this may not be feasible. If automated tests are not possible, include a discusison of your manual testing strategy, including a script that a future developer could use to manually test the feature.

#### Satisfactory:
* Any new or modified backend features include tests that validate that the feature works as intended. These tests cover the changed code, and also contain well-written assertions that thoroughly check the expected behaviors.
* Tests contains no ESLint warnings or errors; does not include any eslint-disable or ts-ignore flags

#### Meets minimum requirements:
* Any new or modified backend features include at least one test, which may or may not be an effective test.
* Tests may contain ESlint warnings (but no errors); does not include any eslint-disable or ts-ignore flags

### 10% Project Pitch
Each team's project pitch grade will account for 10% of the overall grade for the project.

### 10% Project Pitch
Each team's project plan grade will account for 10% of the overall grade for the project.

### 10% Weekly meetings, demonstrations of progress and evaluations
Throughout the semester, each team will be meeting with their TA mentor and with the instructor to discuss their project progress. Attendance at these meetings and demonstrations of progress will, cumulatively, account for 10% of the project grade. Each instructor will provide a more detailed rubric for this section of the assignment.

### 5% Evidence of Development Process
Each team is expected to use their GitHub repository, regularly committing changes while developing their project. 

#### Satisfactory:
* There is a clear development history visible from the git repository: features were delivered incrementally, and not in a single (or several) commits at the end of the project
* There is evidence of code review - for example, pull requests that have comments on them
* There is a correspondence between commit messages and the technical tasks that they are associated with; there are few (if any) commits with meaningless commits messages like `.` or `Add files via upload`.
* Each team member has made at least 2 commits over the lifespan of the project

#### Meets minimum requirements:
* There is a clear development history visible from the git repository: features were delivered incrementally, and not in a single (or several) commits at the end of the project
* Each team member has made at least 2 commits over the lifespan of the project

### Final Report 
The final report should consist of three sections:

#### 10% Report -- Feature Overview
##### Satisfactory:
* The Feature section contains sufficient documentation for a user to interact with your updated version of Covey.Town.
* The documentation covers all steps that the user would need to take to exercise all of your user stories.
* Screenshots are included that capture the key interactions between a user and your new feature.
* Course staff were able to follow these instructions to successfully interact with your project implementation.
* The section is at most 4 pages (roughly 2,000 words maximum), NOT including figures --- fewer pages are absolutely acceptable, consider this a rough limit

##### Meets minimum requirements:
* The Feature contains documentation for a user to interact with your updated version of Covey.Town, but perhaps does not fully describe how.
* The documentation includes at least one or two screenshots, but screenshots do not capture interactions with all of the user stories.
* The course staff were able to figure out how to use it through trial and error.
* The section is at most 4 pages, NOT including figures --- fewer pages are absolutely acceptable, consider this a rough limit

#### 10% Report - Technical Overview
##### Satisfactory:
* Technical Overview contains a description of any substantive changes to the existing Covey.Town codebase, and the architecture of your new code.
* It uses CRC cards, or state diagrams or any of the other techniques that help describe the structure.
* It provides a well-reasoned rationale for why this is the "right" design. 
* The document is at most 2 pages (fewer pages are absolutely acceptable, consider this a rough limit) 
##### Meets minimum requirements:
* Technical Overview includes a description of all major changes to the code compared to our existing Covey.Town codebase.
* The document is at most 2 pages (fewer pages are absolutely acceptable, consider this a rough limit) 

#### 5% Report - README
##### Satisfactory:
* The README section contains detailed instructions to deploy the application with your new feature - modified from our initial installation instructions to include any new setup necessary for your feature.
* The course staff is able to follow these instructions to deploy your application.
* The README section is at most 2 pages (fewer pages are absolutely acceptable, consider this a rough limit) 

#### Meets minimum requirements:
* The README section contains instructions to deploy the application with your new feature, perhaps missing key steps for installing/deploying the application
* The course course staff were able to stumble through configuring it without contacting you.
* The document is at most 2 pages (fewer pages are absolutely acceptable, consider this a rough limit) 

### 10% Demonstration
Each instructor will provide details regarding expectations for the demo.

## Individual Reflection

Accompanying the final team deliverable will be an individual reflection, which every student must submit on their own.
Satisfactory completion of all parts of this reflection is required to receive an "A" grade in the course, and may be used to calibrate project scores across multiple team members.
The individual reflection also provides an opportunity for students to provide confidential feedback on the performance of their teammates.

### Project Concept

Reflect on the evolution of your project concept: How does the project that you delivered compare to what you originally planned to deliver? What caused these deviations?

#### Satisfactory:
* Is at least 2 paragraphs long;
* Includes at least 1 paragraph describing all variances from original project concept;
* Includes at least 1 paragraph of personal reflection on the cause of any variances from the project concept.

### Project Process

Reflect on the evolution of your development process: How did the process by which you designed and implemented evolve from your original project plan? Were there any processes that in hindsight, you wish that you followed, or wish that you followed better?

#### Satisfactory:
* Is at least 2 paragraphs long;
* Includes at least 1 paragraph describing all variances from the software development processes envisioned in your original project plan;
* Includes at least 1 paragraph describing software processes (described in class or not) that you wish you had followed, or wish you had followed better, supported by evidence from your personal experience working on the project.

### Project Team

Reflect on your team dynamic: Provide a frank (and ideally, blameless) postmortem of your and your teammates collaborative performance and participation. If you had to do this same project over with the same teammates, what would you have done differently (or not) to improve your team’s overall performance? Do you think that each of your teammates are deserving of the same grade as you?

#### Satisfactory:
* Is at least 2 paragraphs long;
* Includes at least 1 paragraph reflecting on your own performance as a team member on this project, including what you would have done differently, given what you know now;
* Includes at least 1 paragraph reflecting on your overall team dynamic, including strengths and weaknesses. Reflect on how you might have organized your team differently given what you know now.


