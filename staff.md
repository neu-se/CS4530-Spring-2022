---
layout: page
title: Staff
description: A listing of all the course staff members.
nav_order: 6
---

# Staff

## Office Hours 
All office hours will be held virtually.

Links to join the TA and instructor office hours are [posted in Canvas](https://northeastern.instructure.com/courses/99531/pages/office-hours). TA Office Hours are hosted on Microsoft Teams, using the [Khoury Office Hours](https://info.khouryofficehours.com) app. Please see the [user guide](https://info.khouryofficehours.com/help) for information on how to log in and ask questions.
## Instructors

{% assign instructors = site.staffers | where: 'role', 'Instructor' %}
{% for staffer in instructors %}
{{ staffer }}
{% endfor %}

{% assign teaching_assistants = site.staffers | where: 'role', 'Teaching Assistant' %}
{% assign num_teaching_assistants = teaching_assistants | size %}
{% if num_teaching_assistants != 0 %}
## Teaching Assistants
{% include officeHours.html %}

{% for staffer in teaching_assistants %}
{{ staffer }}
{% endfor %}
{% endif %}

