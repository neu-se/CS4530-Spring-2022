---
layout: assignment
title: "Assignment 1: Venusians"
permalink: /assignments/hw1
parent: Assignments
nav_order: 1
due_date: "Friday January 28, 10:00pm EST"
submission_notes: Submit on GradeScope 
---

### Change Log
* 1/13/22: Initial Release
* 1/16/22: Add pointer to textbooks page - JB

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

Your task is to define TypeScript class `Venusian` and `Ship` as follows:

* The class `Venusian` has a contructor `new Venusian(name:string)` that returns a Venusian with
   the given name and a unique VSN.  The class `Venusian` has the following public methods:

   * `getName()` returns the name of the Venusian
   * `getVSN()` returns the VSN of the given Venusian

* The class `Ship` has a constructor `new Ship(crew:Venusian[], daughters:Ship[])` that returns a
   ship with the given crew, the given daughters, and a unique serial
   number.  The class `Ship` has the following public methods:

   * `getCrew():Venusian[]` returns the crew of the  ship.
   * `getDaughters():Ship[]` returns the daughters of the ship.
   * `getSerialNumber():number` returns the serial
number of the ship
   * `hasWaldo():boolean` returns true iff the ship has one or more crew
   members named Waldo. 
   * `totalWaldos():number` returns the number of Venusians
   named "Waldo" that are in the ship or its fleet.  Venusians can be in two places at once, so if two Waldos have same VSN, you should count them twice.
   * `removeWaldos():void` removes any Venusians named "Waldo" from the crew of the ship.
   * `removeDeepWaldos():void` removes any Venusians
named Waldo from the crews of the given ship and its fleet.
   * `fleetHasDuplicates():boolean` It has come to the attention
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

We will supply you with starter code in [hw1.zip]({{site.baseurl}}/Assignments/HW1/hw1-starter.zip).  Unpack it, put it
in a fresh directory, and build a project by running `npm install` in
it to fetch all the dependencies.
The package also includes some basic sanity tests, which you can run
by saying `npm test`.
You may *not* install additional third-party libraries to use in your code beyond what is included in the handout - we will grade your code using the `package.json` distributed in the handout.

To help you set up a local development environment for this class, we've prepared a tutorial for [setting up a development environment with NodeJS, VSCode and TypeScript]({{site.baseurl}}{% link tutorials/week1-getting-started.md %}).
As a reference for getting started with TypeScript, we suggest the book ["Programming TypeScript" by Boris Cherny](https://learning.oreilly.com/library/view/programming-typescript/9781492037644/). You can read this and many other tech books for free via Northeastern's Libraries - follow the instructions on the [course textbooks page]({{site.baseurl}}{% link textbooks.md %}).


## Rubric

Your code will be evaluated by automated testing in Gradescope.  It
will be judged for style using a linter with parameters set in the
starter code that we will supply you.
Your code must have *no linter errors or warnings* in order for it to receive any grade.
Please note that you can check for linter issues before submitting by running `npm run lint`; many formatting issues can also be automatically fixed by running `npm run format`.

If your code has no linter errors or warnings, then for each of the 10 methods listed above, you will receive a numeric
score of: 
* 2 (Satisfactory)
* 1 (Meets minimum expecations)
* 0 (Not passing)

We have provided between one and three tests on Gradescope to check each of the ten functions that you have been asked to implement.
For each function, the requirements for each of these grades are:
### Satisfactory
* Have no errors or warnings reported by the linter
* Passes all of the Gradescope tests for this function 

### Meets minimum expectations
* Have no errors or warnings reported by the linter
* Fails no more than one of the Gradescope tests for this function (while also passing at least one)

### Not Passing
* Does not meet the minimum expectations.

When we say "no errors reported by the linter", we mean the following:

* Have no style errors (may have warnings) as reported by `npm run-script lint`

* Have no `@ts-ignore` or `eslint-disable` annotations in the code
  that you write.


## Submission Instructions

Submit your assignment in GradeScope. The easiest way to get into
GradeScope the first time is to first [sign into
Canvas](https://northeastern.instructure.com/courses/99531) and then
click the link on our course for "GradeScope".  You should then also
have the option to create an account on GradeScope (if you don't
already have one) so that you can log in to GradeScope directly.
Please contact the instructors immediately if you have difficulty
accessing the course on GradeScope.

Submit your solution to Gradescope in the form of exactly two files, `Venusian.ts` and `Ship.ts`. Before submitting, be sure your code passes the sanity tests included in the starter package. 
GradeScope will provide you with feedback on your submission, providing a numeric score between 0 and 20.

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
