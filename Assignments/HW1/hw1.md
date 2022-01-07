---
layout: page
title: Assignment 1 -- Venusians
permalink: /assignments/hw1
parent: Assignments
nav_order: 1
due_date: "Friday January 28, 10:00pm EST"
submission_notes: Submit on GradeScope 
---

### Change Log

## Objectives of this Assignment

The objectives for this first assignment are to:
* get you familiar with the basics of Typescript and the VSC/npm
ecosystem.
* have you re-acquaint yourself with the basics of object-oriented
programming, such as classes and objects.
* learn to write new code in TypeScript.

Your assignment will be graded following the rubric embedded in this
document.  Based on past experiences, we project that this assignment
could take you up to 14 hours (depending on your prior preparation).
We encourage you to start early so that you can post questions on
Piazza, make the most use of our TAs' tutorials, and attend office
hours as necessary in order to ensure that you can reach Satisfactory
marks across the board.

**This is an individual assignment.** 

Please post any questions about this assignment on Piazza.  We have
many sections of this class, and we want to make sure that we respond
to your questions the same way, regardless of which section you are in.

## Problem Statement

Mars is being invaded by Venusians.  Here's a description of the
Venusian fleet:

1. Each ship has a serial number, a crew, which is a list of
   Venusians, and a possibly-empty set of daughter ships, each of
   which is a ship. 

1. Each Venusian has a name, which is a string, and a VSN (Venusian
   Security Number), which is a number.

1. When we say "fleet", we mean a list of ships and their daughters,
   their daughters' daughters, etc.

1. When we say the "fleet of a ship", we mean the fleet
   consisting of its daughters.

>   EXAMPLE: if ship 1 has daughters ship 11 and ship 12, and ship 11 has
   daughters 111 and 112, and ship 112 has daughters 1121 and 1122,
   and none of these ships has any other daughters, then the fleet of
   ship 1 consists of 1, 11, 12, 111, 112, 1121, and 1122

Your task is to build a Typescript module named `hw1.ts` that exports
the following functions:

1. `makeVenusian(name:string):Venusian //  returns a Venusian with
   the given name and a unique VSN.`
1. `venusianGetName(v:Venusian):string // returns the name of the given Venusian `
1. `venusianGetVSN(v:Venusian):number // returns the VSN of the given Venusian`

1. `makeShip(crew:Venusian[], daughters:Ship[]):Ship // returns a
   ship with the given crew, the given daughters, and a unique serial
   number`

1. `shipGetCrew(ship:Ship):Venusian[] // returns the crew of the given ship`
1. `shipGetDaughters(ship:Ship):Ship[] // returns the daughters of
the given ship`
1. `shipGetSerialNumber(ship:Ship):number // returns the serial
number of the given ship`

1. `hasWaldo(ship:Ship):boolean // returns true iff the ship has a crew
   member named Waldo.`

1. `totalWaldos(ship:Ship):number // returns the number of Venusians
   named "Waldo" that are in the ship or its fleet.`

1. `shipWithoutWaldos(ship:Ship):void // removes any Venusians named
"Waldo" from the crew of the given ship.`

1. `shipWithoutDeepWaldos(ship:Ship):void // removes any Venusians
named Waldo from the crews of the given ship and its fleet.`

1. `shipHasDuplicates(ship:Ship):boolean // It has come to the attention
of the Venusian fleet command that some shipbuilders have been
cheating by putting multiple ships with the same serial number in the
fleets of their ships.  Given a ship, determines whether there are any
duplicates among the ship and its fleet.  The duplicates may occur
anywhere in the ship and its fleet.`  

> EXAMPLE: in the example above,
there are no duplicates.  If ship 12 were added to the daughters of
ship 111, that would be a duplicate, and applying this function to
ship 1 would return true.

## Starter Code and Details

We will supply you with starter code in XXXXX.zip .  Unpack it, put it
in a fresh directory, and build a project by running `npm install` in
it to fetch all the dependencies.
The package also includes some basic sanity tests, which you can run
by saying `npm test`.

To help you set up a local development environment for this class, we've prepared a tutorial for [setting up a development environment with NodeJS, VSCode and TypeScript]({{ site.baseurl }}/{ link hw1.html }


## Rubric

Your code will be evaluated by automated testing in Gradescope.  It
will be judged for style using a linter with parameters set in the
starter code that we will supply you.

For each of the 12 functions listed above, you will receive a numeric
score of: 
* 2 (Satisfactory)
* 1 (Meets minimum expecations)
* 0 (Not passing)

For each function, the requirements for each of these grades are:

### Satisfactory
* Have no errors reported by the linter
* Passes all of the Gradescope tests for this function 

### Meets minimum expectations
* Have no errors reported by the linter
* Fails no more than 2 of the Gradescope tests for this function

### Not Passing
* Does not meet the minimum expectations.

When we say "no errors reported by the linter", we mean the following:

* Have no style errors (may have warnings) as reported by `npm run-script lint`

* Have no `@ts-ignore` or `eslint-disable` annotations in the code
  that you write.


## Submission Instructions

Submit your assignment in GradeScope. The easiest way to get into
GradeScope the first time is to first [sign into
Canvas](https://northeastern.instructure.com/courses/NNNN) and then
click the link on our course for "GradeScope".  You should then also
have the option to create an account on GradeScope (if you don't
already have one) so that you can log in to GradeScope directly.
Please contact the instructors immediately if you have difficulty
accessing the course on GradeScope.

Submit your solution to Gradescope in the form of a single file named
`hw1.ts` that exports the 16 functions listed above. 
GradeScope will provide you with feedback on your submission, providing a numeric score of:
* 2 (Satisfactory)
* 1 (Meets minimum expecations)
* 0 (Not passing)

You will be able to  view the complete output from running the tests and
linter on GradeScope. If you have any doubts about the autograder,
please contact the course staff immediately. In particular, if you are
not able to reproduce and debug test or linter failures on your local
machine, **please** ask the TAs for assistance: otherwise you'll waste
an immense amount of time waiting for the autograder to complete, when
you could get the same feedback in seconds running the tests + linter
locally.

You may submit solutions as many times as you want; only the last
submission before the deadline will be counted.
