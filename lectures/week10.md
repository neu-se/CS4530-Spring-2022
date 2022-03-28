---
layout: module
title: Week 10 - Software Engineering and Security
permalink: /modules/week10
parent: Modules
nav_order: 10 
lessons: #I know that it seems a bit annoying to have to put each lesson in the yaml header like this...
  #But, the benefit is that if you do it like this, the site
  #will automatically add the lecture on Canvas, including
  #links to the ppt, pdf, and tutorials as appropriate!
  - title: Software Engineering + Security
    pdf: "Lesson 10 Security.pdf"
    ppt: "Lesson 10 Security.pptx"
---

### Learning Objectives:

In this week of the course, you will learn to:
* Describe that security is a spectrum, and be able to define a realistic threat model for a given system
* Evaluate the tradeoffs between security and costs in software engineering
* Recognize the causes of and common mitigations for common vulnerabilities in web applications
* Utilize static analysis tools to identify common weaknesses in code

{% include lesson.html %}

### For Further Reading:

* ["What are Weak Links in the npm Supply Chain?"](https://arxiv.org/abs/2112.10165)
* ["Why secret detection tools are not enough: It’s not just about false positives - An industrial case study"](https://link.springer.com/article/10.1007/s10664-021-10109-y)
* ["A comparative study of vulnerability reporting by software composition analysis tools"](https://dl.acm.org/doi/10.1145/3475716.3475769)
* ["Practical Automated Detection of Malicious npm Packages"](https://arxiv.org/abs/2202.13953)
* [HashiCorp Vault](https://www.vaultproject.io)
* ["OWASP Top 10 Web Security Risks"](https://owasp.org/www-project-top-ten/)
* [LGTM analysis of transcript server](https://lgtm.com/projects/g/neu-se/transcript-app/?mode=list) and [XSS example on transcript server](https://rest-example.covey.town/transcripts/%3Ch1%3ECongratulations%21%3C%2Fh1%3E%20You%20are%20the%201000th%20visitor%20to%20the%20transcript%20site%21%20You%20have%20been%20selected%20to%20receive%20a%20free%20iPad.%20To%20claim%20your%20prize%20%3Ca%20href%3D%27https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3DDLzxrzFCyOs%27%3Eclick%20here%21%3C%2Fa%3E%3Cscript%20language%3D%22javascript%22%3Edocument.getRootNode%28%29.body.innerHTML%3D%27%3Ch1%3ECongratulations%21%3C%2Fh1%3EYou%20are%20the%201000th%20visitor%20to%20the%20transcript%20site%21%20You%20have%20been%20selected%20to%20receive%20a%20free%20iPad.%20To%20claim%20your%20prize%20%3Ca%20href%3D%22https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3DDLzxrzFCyOs%22%3Eclick%20here%21%3C%2Fa%3E%27%3Balert%28%27You%20are%20a%20winner%21%27%29%3B%3C%2Fscript%3E) (This link might be annoying, but is not malicious)
* Software supply-chain vulnerabilities: [ESLint 2018 attack](https://eslint.org/blog/2018/07/postmortem-for-malicious-package-publishes), [Podcast on SolarWinds attack](https://www.theverge.com/2021/1/26/22248631/solarwinds-hack-cybersecurity-us-menn-decoder-podcast)
* Security awareness/training activity: [OWASP Juice Shop](https://owasp.org/www-project-juice-shop/), [online demo](https://juice-shop.herokuapp.com/#/)

