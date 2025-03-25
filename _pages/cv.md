---
layout: archive
title: "CV"
permalink: /cv/
author_profile: true
redirect_from:
  - /resume
---

{% include base_path %}

[CV pdf here]({{site.baseurl}}/files/michaelbjamescv.pdf)
·
[Resume pdf here]({{site.baseurl}}/files/michaelbjamesresume.pdf)

Publications
======
  <ul>{% for post in site.publications reversed %}
    {% include archive-single-cv.html %}
  {% endfor %}</ul>

Education
======
* Ph.D **in progress**, University of California, San Diego, began 2018
* M.S. Computer Science, University of California, San Diego, 2021
* B.S. Computer Science, Tufts University, 2015

Work experience
======
* 2024-Current: Sailplane PBC, Founding Research Scientist (NYC)
  * Design and implemented new, highly-parallel AI agent for programming
  * Compared agent against SOTA with new dataset and novel evaluation
  * Created multi-agent cooperation protocol

* Summer 2022: Microsoft, Research Intern
  * Worked with PROSE team on interface to automatic refactoring tool

* 2017-2018: Jana Mobile, Software Engineer II (Boston)
  * Managed financial monitoring pipeline
  * Wrote several end-to-end anti-fraud features
  * Made internal data pipeline tools easier to use for other devs

* 2015-2016: Uber Technologies, Software Engineer (San Francisco)
  * Migrated and maintained [Uber for Business](https://business.uber.com) from Backbone to React/Redux
  * Designed and wrote first Golang microservice for team of 20 engineers
  * Presented internal talks about functional reactive programming; productive git education; Golang

* Summer 2014: Prezi, Elm Intern (Budapest)
  * collaborated with [Evan Czaplicki](https://twitter.com/czaplic), Elm-lang's author
  * Built first iteration of elm-reactor.
  * [Authored blog post about it](https://elm-lang.org/news/time-travel-made-easy)

* Summer 2013: Nomic Inc, Mobile Intern (San Francisco)
  * Supervisor: Nate Boyd

Talks
======
  <ul>{% for post in site.talks reversed %}
    {% include archive-single-talk-cv.html %}
  {% endfor %}</ul>

Teaching
======
  <ul>{% for post in site.teaching reversed%}
    {% include archive-single-cv.html %}
  {% endfor %}</ul>

Service and leadership
======
* PLDI 2022/23 SV Chair
* PLDI 2021 Student Volunteer
