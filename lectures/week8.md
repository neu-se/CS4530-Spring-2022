---
layout: module
title: Week 8 - Continuous Integration
permalink: /modules/week8
parent: Modules
nav_order: 8
lessons: #I know that it seems a bit annoying to have to put each lesson in the yaml header like this...
  #But, the benefit is that if you do it like this, the site
  #will automatically add the lecture on Canvas, including
  #links to the ppt, pdf, and tutorials as appropriate!
  - title: Continuous Integration
    pdf: "Lesson 8.1 Continuous Integration.pdf"
    ppt: "Lesson 8.1 Continuous Integration.pptx"
  - title: Deployment Infrastructure
    pdf: "Lesson 8.2 Deployment Infrastructure.pdf"
    ppt: "Lesson 8.2 Deployment Infrastructure.pptx"
  - title: Continuous Delivery
    pdf: "Lesson 8.3 Continuous Delivery.pdf"
    ppt: "Lesson 8.3 Continuous Delivery.pptx"

---

### Learning Objectives:

In this week of the course, you will learn to:
* Identify the stages of a continuous development pipeline and describe how they relate to improving code velocity and quality 
* Describe the difference between key deployment container abstractions and their role in modern software
* Describe the distinction between a DevOps and "traditional" developer/operator mentality
* Configure a continuous integration workflow to automatically deploy your team's project repository to Netlify and Heroku

We will also discuss project planning in class time, and each team will meet briefly with their instructor to discuss their project concept and plan. 

### Important Dates:

- [Project Plan]({{ site.baseurl }}{% link Assignments/project-plan.md %}) due 3/11
- [HW4]({{ site.baseurl }}{% link Assignments/HW4/hw4.md %}) due 3/25

{% include lesson.html %}

### Resources
* Activity: [deploying Covey.Town in CI]({{ site.baseurl }}{% link Activities/Activity8.1_Continuous_Dev.md %})

### Additional Readings:

* [Software Engineering @ Google](https://learning.oreilly.com/library/view/software-engineering-at/9781492082781/), Chapters 23 (Continuous Integration), 24 (Continuous Delivery), 25 (Compute as a Service)
* Podcast: [Jafar Soltani on Continuous Delivery for Multiplayer Games, with Nate Black, 2018](https://www.se-radio.net/2018/09/se-radio-episode-339-jafar-soltani-on-continuous-delivery-for-multiplayer-games/)
* [Deploying Node.js Apps on Heroku](https://devcenter.heroku.com/articles/deploying-nodejs)
* Release engineering at Facebook: [Presentation from 2014](https://www.youtube.com/watch?v=Nffzkkdq7GM), [more recent blog post](https://engineering.fb.com/2017/08/31/web/rapid-release-at-massive-scale/)
* Open-source monitoring and infrastructure tools referenced in lessons: [Grafana](https://grafana.com), [Icinga](https://icinga.com), [Caprover](https://caprover.com)