---
layout: module
title: Week 9 - Distributed Systems & Static Program Analysis
permalink: /modules/week9
parent: Modules
nav_order: 9
lessons: #I know that it seems a bit annoying to have to put each lesson in the yaml header like this...
  #But, the benefit is that if you do it like this, the site
  #will automatically add the lecture on Canvas, including
  #links to the ppt, pdf, and tutorials as appropriate!
  - title: Why Engineer Distributed Software
    pdf: "Lesson 9.1 Why Engineer Distributed Software.pdf"
    ppt: "Lesson 9.1 Why Engineer Distributed Software.pptx"
  - title: Strategies for Engineering Distributed Software
    pdf: "Lesson 9.2 Strategies for Engineering Distributed Software.pdf"
    ppt: "Lesson 9.2 Strategies for Engineering Distributed Software.pptx"
  - title: Static Program Analysis
    pdf: "Lesson 9.3 Static Program Analysis.pdf"
    ppt: "Lesson 9.3 Static Program Analysis.pptx"
---

### Learning Objectives:

In this week of the course, you will learn to:

- Decide why would you want to build your system as a distributed system
- Describe 5 key goals of distributed systems
- Describe partitioning and replication as building blocks for distributed systems
- Evaluate the trade-offs between consistency and availability in distributed systems
- Answer the question: how does partitioning and replication help us satisfy requirements for distributed systems?
- Explain good uses for static analyzers
- List limitations of static analyzers and program verification

### Important Dates:

- [HW4]({{ site.baseurl }}{% link Assignments/HW4/hw4.md %}) due 3/25

{% include lesson.html %}

### Additional Readings:

* ["Distributed Systems for Fun and Profit"](http://book.mixu.net/distsys/index.html) by Mikito Takada
* ["The CAP FAQ - The Paper Trail"](https://www.the-paper-trail.org/page/cap-faq/)
* [Software Engineering @ Google](https://learning.oreilly.com/library/view/software-engineering-at/9781492082781/), Chapter 20 (Static Analysis)

