---
title: "Program Synthesis by Type-Guided Abstraction Refinement"
collection: publications
permalink: /publication/2019-11-11-hoogle-plus
date: 2019-11-01
venue: 'Principles of Programming Languages 2020'
paperurl: 'http://michaelbjames.com/files/tygar-2020.pdf'
demourl: 'http://goto.ucsd.edu/hoogle_plus'
authors:  'Zheng Guo, <strong>Michael B. James</strong>, David Justo, Jiaxiao Zhou, Ziteng Wang, Ranjit Jhala, Nadia Polikarpova'
citation: 'Zheng Guo, Michael B. James, David Justo, Jiaxiao Zhou, Ziteng Wang, Ranjit
Jhala, Nadia Polikarpova, “Program synthesis by type-guided abstraction refinement,” Proc. ACM
Program. Lang., vol. 4, no. POPL, p. 12:1–12:28, Dec. 2019, doi:
10.1145/3371080.'
---

We consider the problem of type-directed component based synthesis where, given
a set of (typed) components and a query type, the goal is to synthesize a term
that inhabits the query. Classical approaches based on proof search in
intuitionistic logics do not scale up to the standard libraries of modern
languages, which span hundreds or thousands of components. Recent graph
reachability based methods proposed for languages like Java do scale, but only
apply to components over monomorphic data and functions: polymorphic data and
functions infinitely explode the size of the graph that must be searched,
rendering synthesis intractable. We introduce type-guided abstraction refinement
(TYGAR), a new approach for scalable type-directed synthesis over polymorphic
datatypes and components. Our key insight is that we can overcome the explosion
by building a graph over abstract types which represent a potentially unbounded
set of concrete types. We show how to use graph reachability to search for
candidate terms over abstract types, and introduce a new algorithm that uses
proofs of untypeability of ill-typed candidates to iteratively refine the
abstraction until a well-typed result is found.


We have implemented TYGAR in H+, a tool that takes as input a set of Haskell libraries and a query type, and returns a Haskell term that uses functions from the provided libraries to implement the query type. We have evaluated H+ on a set of 44 queries using a set of popular Haskell libraries with a total of 291 components. Our results demonstrate that H+ returns an interesting solution within the first five results for 33 out of 44 queries. Moreover, TYGAR allows H+ to rapidly return well-typed terms, with the median time to first solution of just 1.4 seconds.

[Download paper here]({{site.baseurl}}/files/tygar-2020.pdf)
