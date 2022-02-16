---
layout: module
title: Week 5 - Testing Intro, Unit Tests / Test Adequacy Measures
permalink: /modules/week5-testing
parent: Modules
nav_order: 5
lessons: #I know that it seems a bit annoying to have to put each lesson in the yaml header like this...
  #But, the benefit is that if you do it like this, the site
  #will automatically add the lecture on Canvas, including
  #links to the ppt, pdf, and tutorials as appropriate!
  - title: Introduction to Testing
    pdf: "Lesson 5.1 Introduction to Testing.pdf"
    ppt: "Lesson 5.1 Introduction to Testing.pptx"
  - title: Evaluating Tests
    pdf: "Lesson 5.2 Evaluating Tests.pdf"
    ppt: "Lesson 5.2 Evaluating Tests.pptx"
  - title: Testing Systems
    pdf: "Lesson 5.3 Testing Systems.pdf"
    ppt: "Lesson 5.3 Testing Systems.pptx"
---

### Learning Objectives:

This week's lessons will focus on testing, discussing the need for testing and importance of testing automation. We will also highlight what makes a test good or bad, how we compute code coverage and how one might judge how well a test suite accomplishes its testing goals. Finally we will discuss how to test larger systems by using test doubles.

### Important Dates:

- Project Teams [announced on Piazza](https://piazza.com/class/ky1wxuhh7ry2ue?cid=309)
- [Project Kick-off Meeting]({{ site.baseurl }}{% link Assignments/project-overview.md %}) by 2/18
- [Project Pitch]({{ site.baseurl }}{% link Assignments/project-pitch.md %}) due 2/25

{% include lesson.html %}

{% comment %}
{% endcomment %}
### Tutorials

* [Unit Testing with Jest]({{site.baseurl}}{% link tutorials/week5-unit-testing.md %})

### Additional Readings:

- For more discussion on Test Double, see [Martin Fowler’s article, “Mocks Aren’t Stubs”](https://martinfowler.com/articles/mocksArentStubs.html).

- See also the book by Gerard Meszaros “xUnit Test Patterns: Refactoring Test Code”.
