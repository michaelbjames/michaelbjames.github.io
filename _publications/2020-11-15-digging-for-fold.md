---
title: "Digging for Fold: Synthesis-Aided API Discovery for Haskell"
collection: publications
permalink: /publication/2020-11-15-digging-for-fold
date: 2020-11-15
venue: 'OOPSLA 20'
paperurl: 'http://michaelbjames.com/files/digging-for-fold.pdf'
demourl: 'http://hplus.programming.systems'
authors: '<strong>Michael B. James</strong>, Zheng Guo, Ziteng Wang, Shivani Doshi, Hila Peleg, Ranjit Jhala, Nadia Polikarpova'
citation: 'Michael B. James, Zheng Guo, Ziteng Wang, Shivani Doshi, Hila Peleg, Ranjit
Jhala, Nadia Polikarpova, “Digging for fold: synthesis-aided API discovery for Haskell,” Proc.
ACM Program. Lang., vol. 4, no. OOPSLA, p. 205:1–205:27, Nov. 2020, doi:
10.1145/3428273.'
---

We present Hoogle+, a web-based API discovery tool for Haskell. A Hoogle+ user
can specify a programming task using either a type, a set of input-output tests,
or both. Given a specification, the tool returns a list of matching programs
composed from functions in popular Haskell libraries, and annotated with
automatically-generated examples of their behavior. These features of Hoogle+ are
powered by three novel techniques. First, to enable efficient type-directed
synthesis from tests only, we develop an algorithm that infers likely type
specifications from tests. Second, to return high-quality programs even with
ambiguous specifications, we develop a technique that automatically eliminates
meaningless and repetitive synthesis results. Finally, we show how to extend
this elimination technique to automatically generate informative inputs that can be
used to demonstrate program behavior to the user. To evaluate the effectiveness
of Hoogle+ compared with traditional API search techniques,we perform a user study
with 30 participants of varying Haskell proficiency. The study shows that
programmers equipped with Hoogle+ generally solve tasks faster and were able to
solve 50% more tasks overall.

[Download paper here]({{site.baseurl}}/files/digging-for-fold.pdf)
