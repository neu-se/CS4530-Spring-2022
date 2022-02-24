---
layout: page
title: Project Plan
permalink: /assignments/project-plan
parent: Assignments
nav_order: 7
---
# Project Plan **Due Friday March 11, 10:00pm EST**{: .label .label-red }
You should use the feedback on your project pitch to revise the scope of your project, and discuss any changes with your assigned TA.
The goal of this assignment is to finalize the intended scope of your project based on these discussions and to outline the engineering and documentation tasks that you will need to accomplish in order to complete your project.
 
The project plan will include:
* *Revised* Introductory problem statement: what problem in Covey.Town does your (proposed) feature solve? Provide a paragraph (or two) that describes why you are interested in building this feature. (revised if necessary based on feedback on the project pitch)
* *Revised* User stories and acceptance criteria: high level description of how users will interact with your new feature (revised based on feedback on the project pitch)
* *Revised* Class-level design (CRC cards): What are the new classes that you are going to add to the Covey.Town codebase, and how will they interact with any existing classes?  (revised based on feedback on the project pitch)
* Work breakdown: Define engineering tasks that will be necessary to implement your new feature. 
* Schedule: Provide a weekly schedule for completion of these tasks. 

We list page *maximums* for each section as general guidance of what we are willing to grade. Please do not feel compelled to use all of the pages provided, and remember that a diagram or table can be as expressive (or more) as a comparable amount of text.

### Creating a GitHub Repository
Your team's development must take place within a private GitHub repository in our GitHub Classroom. To create your repository, one member of your team should follow these instructions:
1. Sign in to [GitHub.com](https://www.github.com/), and then [use our invitation to create a repository with the covey.town codebase](https://classroom.github.com/a/VeYucWvK). You should enter your group number (e.g. "Group 7Y") as the team name.
2. Refresh the page, and it will show a link to your new repository, for example: `https://github.com/neu-cs4530-s22/team-project-group-7y`. Click the link to navigate to your new repository. This is the repository you will use for the project.
3. Add your teammates:
   1. From your repository page, click on "Settings" [(Screenshot)](project-plan-images/1project-settings.png)
   2. On the left hand sidebar, select "Collaborators and Teams" [(Screenshot)](project-plan-images/2collaborators-teams.png)
   3. You will see a single team listed, which will be the group name that you entered when creating the repository. Click on that team name. [(Screenshot)](project-plan-images/3team.png)
   4. From the next page, you can click on the "+" icon in order to add a team member [(Screenshot)](project-plan-images/4team-page.png)
   5. Enter the GitHub.com username for your teammate. [(Screenshot)](project-plan-images/5add-team-member.png)
   6. After confirming that you have selected the correct user, click the button to add your teammate. [(Screenshot)](project-plan-images/6confirm-team-add.png)
   7. Repeat steps 4-6 for each of your teammates

This repository will be private, and visible only to your team and the course staff. After the semester ends, you are welcome to make it public - you have complete administrative control of the repository. 

You should create your team's repository before submitting your project plan - your TA will ask to confirm that you have created it when you meet.

## Revised Problem Statement, User Stories and Acceptance Criteria (max 4 pages)
If your problem statement has changed in response to feedback from the course staff, please include a revised problem statement. If there are no changes to your problem statement from your original project pitch, then please include your original problem statement along with a note that this problem statement is unchanged.

If you received feedback on your user stories and their acceptance criteria from your project pitch, then you must submit revised user stories and acceptance criteria based on that feedback.
Even if your project pitch user stories were satisfactory, you may also, optionally, choose to revise your user stories based on your changing goals for the project. 
If there are no changes to your user stories and their acceptance criteria, then please include your original user stories and acceptance criteria along with a note that they are unchanged. 
## Revised CRC Cards (max 4 pages)
If you received feedback on your CRC cards from the project pitch, you must revise the CRC cards based on that feedback:
Start to think about how you will implement this feature. What are the new classes that you are going to add to the Covey.Town codebase, and how will they interact with any existing classes? Create CRC cards that demonstrate the way that your feature will fit in with the existing codebase, creating cards for your new classes, and for any existing classes that you will anticipate modifying. Please refer to Lesson 2.4 (slides 20-21) for more details about CRC cards, and examples of CRC cards. 

## Work Breakdown (max 4 pages)
Define engineering, testing, documentation, and infrastructure tasks for your project (please be sure to consider all three categories of tasks).
Start by considering each of your user stories, and identify what work needs to be done to implement each of them.

Each work item should contain the following information:
* Task to be performed
* User story (or stories) that this task relates to
* Team member responsible for completing the task
* T-shirt size estimate of how long will be needed to complete the task, using the following buckets:
    * Small: Can likely be completed by one team member in one sitting of less than 3-4 hours
    * Medium: Likely to require involvement of multiple team members, over the course of 1-2 days
* A brief (1-2 sentence max) justification of how you reached the size estimate of the task 
* Milestone for delivering the task, chosen from one of the following:
  * Sprint 0: Mar 21-Mar 25
  * Sprint 1: Mar 26-Apr 9
  * Sprint 2: Apr 10-Apr 23

It is hard to say (generically) how many work items are necessary, but note that you must provide a rationale for each task that justifies why you believe that it can be accomplished within the time frame (be it a few hours, or a few days). You may find it useful as you iterate through your planning process to begin with several "Large" tasks (bigger than those allowable in the submission), and then do research (including reaching out to your TA mentor) to determine how to break these large tasks into several smaller tasks.

Make sure to consider dependencies among tasks (this has to be done before that). Be realistic, and leave time for contingencies.
Remember that you will need to have a demo prepared of your feature by 4/25 - just 5 weeks from the due date of this assignment. Be sure to leave time for testing and quality assurance.

Your work breakdown can take the format of a simple textual list, or items scheduled in an issue tracker, like GitHub issues.
You do not need to use any special format (such as Gantt or Pert charts). If you choose to create your work breakdown in an issue tracker, you may of course also use the issue tracker to schedule your tasks.
 
## Submission 
Your project plan should be submitted as a single PDF in GradeScope to the assignment "Project Plan."
Each team submits a single document to GradeScope: when uploading the submission, GradeScope will ask you who your teammates are, and then will associate this submission with every member of your team.
This assignment is due March 11 at 10pm. 
## Grading
The project plan will account for 10% of your project grade. The grading of the project plan is further broken down as follows:

Introductory problem statement (10%):
* Receive full marks if there is a narrative consisting of 4-10 sentences that describes a specific problem that your project aims to solve.
* Receive partial credit if the narrative is present, but does not describe a problem that the project aims to solve

Revised User stories (30%):
Each of the three user stories will account for 10% of your grade on this assignment and graded as follows:
* Receive full marks if:
  * The user story and conditions of satisfaction are revised based on any feedback provided on the project pitch
  * The user story fits the problem statement
  * The user story satisfies the INVEST criteria for good user stories
  * The user story includes conditions of satisfaction that cover the "normal" expected behavior of the feature, and any relevant error cases

Revised CRC cards (20%):
Your CRC cards will be evaluated holistically on the following rubric:
* The CRC cards are revised based on any feedback provided on the project pitch
* There are a sufficient number of CRC cards provided such that it will be possible to define realistic engineering tasks to implement your feature based on the classes and their responsibilities.
* The names of new classes must follow our course style guide.
* Each CRC card must include a short phrase or two describing the responsibilities of the type in the context of the application
* Each CRC card must include all relevant collaborators (when these can be determined from the codebase)
* Each CRC card must include a description of the state that is kept by objects of the class.

Work breakdown (50%):
Your work breakdown will be evaluated holistically on the following rubric:
* The work breakdown includes the engineering, testing, documentation and infrastructure tasks. 
* Each task is assigned to a team member
* Each task has a t-shirt size of small or medium
* Each task has a justification for its estimation of 1-2 sentences 
* Each task is assigned to a sprint

