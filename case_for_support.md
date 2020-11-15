---
# YAML metadata
bibliography: dash.bib
geometry: margin=2cm
fontsize: 11pt
fontfamily: arev
linkcolor: blue
urlcolor: blue
---
<!---
This Case for Support template must be submitted as a CfS attachment on Je-S alongside the application.  The final version must not exceed 6 pages. This document should be completed in Arial 11pt, margins must not be less than 2cm, and each page should be numbered. Please attach as a PDF document, especially if mathematical symbols are used in the content. All sections must be completed, but the relative sizes of each section may be altered, and the instructions shown in italics deleted.

Indicative lengths for each section are provided but you are free to use the space available as appropriate to your proposal. Please refer to the call text and assessment criteria in developing your Case for Support.

Project title:

Keywords:

Training type(s): e.g. workshop/summer school/online training/development of new modules etc.

Data science theme(s): e.g. data management/large-scale data/modelling etc.

Health & bioscience theme(s): e.g. genomics/proteomics/digital health/AI etc.

Scientific Value and Quality of Training (4 pages)
What is the scientific focus, aims and objectives of the proposal? How does it address current training needs and the broader landscape? 

Strategy (1 page)
How will you ensure broad access to the training? What approaches will you take to ensure diversity and inclusion? How will you ensure the long-term sustainability of the training resources?

Value and Impact (½ page)
What is the rationale for the proposed use of resources?  How will you develop added value over existing resources? How will you measure success? 

Team & Management (½ page)
How will you manage the project? Please include details regarding project governance, and approach to community input/ feedback. You do not need to duplicate information captured in the Capability to Deliver.

## Technical notes

Citations - add to "dash.bib". Examples:

Blah blah [see @doe99, pp. 33-35; also @smith04, chap. 1].

Blah blah [@doe99, pp. 33-35, 38-39 and *passim*].

Blah blah [@smith04; @doe99].

Smith says blah [-@smith04].

@smith04 says blah.

@smith04 [p. 33] says blah.

https://pandoc.org/MANUAL.html#extension-citations
-->

# An open model for training in reproducible data science

**Keywords**: reproducibility; open-source; collaboration.

**Training type**: workshop; summer school; blended training.

**Data science themes**: reproducible research; data stewardship, management
& sharing; data modelling skills; data exploration / interpretation; improving
software, computing, infrastructure, architecture & data engineering
knowledge; statistics skills; machine learning.

**Health & bioscience themes**: neuroscience; computational social science;
psychology; imaging; medicine.

## Scientific Value and Quality of Training

<!---
What is the scientific focus, aims and objectives of the proposal? How does it
address current training needs and the broader landscape? ~ 4 pages.
-->

**Background**: Data science is an approach to data analysis with a foundation
in code and algorithms [^cfd-what-is].  It is not new; rather it is
a recognition of the central role that code and computing has played in data
analysis since computing became widely available [@donoho201550].  Data
science requires that we take code seriously.  "Coding" is not a useful
additional skill for advanced research, but the foundation for all modern
quantitative data analysis.  Thus understood, coding is comparable to bench
skills and lab notebooks in wet-lab research.  Every wet-lab researcher must
learn these skills; every researcher doing quantitative data analysis must
learn code for data analysis, and they must learn organized process for using
code and data.  The consequences of not doing so are the same as those for the
poorly trained wet-lab researcher; a poorly trained data analyst will be
disabled by confusion, inefficiency and error.  This is the central message of
computational reproducibility [@donoho2010invitation]; if we do not take code
seriously, our work will be full of error, and poor organization means that
the analysis is hard to share and difficult to extend. This leads to enormous
waste in wrong results and repeated work.

[^cfd-what-is]:
    <https://matthew-brett.github.io/cfd2020/intro/what-is-data-science.html>

Education in data science has revealed another fundamental idea; that code is
the most fruitful foundation for teaching the central ideas of statistical
inference and prediction.  Neither is this a new insight; teachers of
statistics have been making this case for many years.  The mathematical
formulation that generations of students have suffered was necessary because
we needed to simplify calculations for lack of computing power;
@cobb2007introductory phrases this as "mathematics as computational engine".
Now we have an abundance of computing power, we can use much simpler
resampling algorithms that are easy to express in code: "computation as
computational engine".  This gives students a deeper understanding of the
underlying ideas of statistical inference. It also makes it natural to
progress from standard statistical inference to machine learning and
prediction.

Data science teaching therefore contains three fundamental ideas:

1. **code-as-analysis**; the recognition of the central role of code in
   expression the algorithms of practical data analysis;
1. **code-to-learn**; in contrast to the approach where "coding" is an
   optional additional skill --- "learning to code" --- "code-to-learn" uses
   code as the basis to explain the algorithms of inference and prediction.
1. **code-for-reproducibility**; taking code seriously must involve careful
   process in the organization and sharing of code and data.  Learning to use
   code in this way leads to reproducibility as a natural product of organized
   working process --- **reproducibility by design**.

This teaching differs substantially from the traditional learning-to-code
approach.  The data science method approaches code from the point of view of
data; students start early with fundamental objects for data analysis such as
arrays and data tables, and proceed to data selection and visualization.
Inference comes from algorithms for simulation and resampling; we use
numerical optimization instead of algebra for parameter fitting.  With this
background it becomes natural to explain and implement simple machine learning
and other prediction methods.  Students typically learn to code in
a computational *notebook* in which the student and instructor combine text
and interactive code to explain and implement the analysis.

As Berkeley has shown, and we have experienced, these methods represent
a transformation in our ability to prepare researchers for real data analysis,
to convey deep understanding of the underlying ideas.

**Code-for-reproducibility** teaches organized coding practice (OCP). The
components for OCP are all but universally accepted in industry and
open-source: code version control; standardized data organization and
verification; code review; contribution and issue tracking; and continuous
integration testing.  We have shown that we can teach
these methods to undergraduates in a single-semester course
[@millman2018rcsds].  Our students used OCP to build substantial reproducible
and collaborative project for an open-ended scientific data analysis.
Although this teaching worked well, and we believe it to be by far the
most effective basis for reproducible analysis, it continues to be extremely
rare.

These teaching methods promise a huge increase in productivity and
reproducibility in research - but there are very few teachers with enough
experience and skills to use them, and even fewer who are yet in a position to
build new courses.  How can we move forward at the speed that we need?

**Approach**: We propose to use the methods of open-source
software development to accelerate adoption of data science teaching.
Open-source methods have been extraordinarily effective in allowing small
groups of committed programmers to build software that continues to displace
closed, proprietary software.  This is so despite the apparently overwhelming
advantages of the proprietary software in terms of programmer hours and
experience, and prior market share. If we can apply this model successfully to
data science teaching, we expect very great improvements in quality and range,
compared to more traditional model of closed or effectively closed content in
competing proprietary courses.

We need to replicate these elements of open-source development:

* A committed community of user-contributors.
* Common ownership of materials.
* Complete vendor independence.
* Rapid iteration.

A user-contributor is a teacher who is editing and adding to the teaching
material, and using these materials to teach.  This is a fundamental rule in
open source; code improves by its use in solving real problems, in the same
way that teaching materials improve by their use in teaching.

Common ownership is essential, and this depends on licensing. A contributor
must be absolutely confident that they can continue to use and distribute
their work.  This means that the license must give the contributor substantial
rights over the material.  In particular, it means that we cannot use common
license clauses for teaching materials, such as Non-Commercial clauses, or
No-Derivative clauses.  A contributor may well want to allow companies to use
their work. Indeed, we want all institutions, commercial and otherwise, to
benefit from our work.  We are experienced teachers, and we know that each
class and each teacher are different enough that it is rare we can use
materials without modification.   Modification is the engine of experiment,
and therefore, improvement.  For example, Berkeley allows anyone to use their
textbook, but does not allow anyone to modify and redistribute their
textbook materials without the explicit permission of the authors.  Even if
Berkeley grants this permission, the condition makes it possible for Berkeley
to withdraw a contributor's ability to use their own work, if it modifies any
of Berkeley's materials --- a risk that most contributors will not accept.

Common ownership also implies vendor independence.  It must be demonstrably
impossible for any company or group of companies to withhold a contributor's
right to effectively their work.  Therefore, the machinery to deploy these
materials must work on any system, including the contributor's own desktop
computer.

Rapid iteration is an essential engine for continuous improvement.  It must be
simple to build and deploy these teaching materials.  This should be possible
using automation with scripts, and ideally, deployment should be part of the
testing process of every contribution (continuous integration).

**Objectives**: We will seed and grow the community of contribution by
applying the open-source methods we describe above.   By the end of the grant
period, we will aim to have the following courses tested, built and available,
with fully open licenses for all code and materials, and vendor independent
deployment mechanisms. These courses will use examples across the
life-sciences to show the generality of the methods, and engage learners from
different fields.

Our strategy is to start rapid iteration, and use this iteration to discover
the tools we need to improve our ability to work with each other, and
therefore, share work, and working process.  We will iterate on course
deployment, starting with manual deployment using existing procedures, and
working to progressively streamline and automate deployment, so it will become
possible for new teachers to use our deployment methods with minimal support.

Our first courses are aimed at leaders of research groups and teachers of statistics, to pilot our materials and to recruit fellow researchers and teachers to develop the courses and materials.

* A blended learning "train-the-trainer" introduction to code-as-analysis and
  code-to-learn.  We will target this course at faculty leading research
  groups and teachers of data analysis / statistics across fields in the
  health and life-sciences.  It will introduce faculty to the code-first
  code-to-learn approach to data analysis teaching, and to the interactive
  coding machinery that students use.  The aim of the course is to show the
  faculty how such teaching approaches work, and give of sketch of how they
  can be effective in introducing students to code, and teaching the
  fundamental ideas of data analysis, statistics and machine learning.  As
  with our courses for junior faculty (below), these courses have no
  requirements for previous experience with code, advanced maths, or
  confidence in traditional statistics.  We will show participants how to interact with our community to use and modify our materials.
* A similar "train-the-trainer" course introducing code-for-reproducibility.
  We target this course to faculty leading research groups that have some
  experience of using code for data analysis and supervising students doing
  the same.  The course shows the standard methods behind OCP, how these can
  be taught effectively to junior and senior researchers, and their power in
  improving efficiency, accuracy and reproducibility.  As for the course above, we will show participants how to use and improve our materials.
* A "Foundations of data science" blended learning summer school course,
  designed for a intensive two-week / 10 day course.  The course teaches
  code-as-analysis and code-to-learn.  It has no requirements for prior
  experience of coding, and minimal requirements for mathematics.  Some memory
  of GCSE level maths should be enough.  We introduce basic concepts in data
  analysis code and sampling, such as variables, for-loops, arrays, data
  tables, and plots.  There are frequent guided exercises in the form of
  computational notebooks running in the browser, within the learning
  environment.  We develop statistical inference with simulation, resampling,
  and permutation tests.  We sketch the use of bootstrap for confidence
  intervals.  Seed materials start with our existing data science courses
  [^cfd2020], inspired in turn by Berkeley's foundation course [^data8].
* A code-for-reproducibility two-week / 10 days course, targeted at
  researchers with some experience of coding for data analysis. This course is
  live, but can be online. We cover standard OCP including version control,
  code and data organization, data verification, code review, contribution
  / issue tracking, and continuous integration.  The second course week is
  shared between continuing teaching and group collaboration on a substantial
  reproducible analysis project using OCP.  For this course, students do not
  use the interactive notebook, but switch to OCP tools such as text editors
  and the command line.  We seed this course on pedagogy and materials from
  our initial Berkeley course [@millman2018rcsds].
* A semester-long version of the "Foundations of data science" course, using
  similar pedagogy to the summer course. In addition to the topics for the
  summer course, we cover line fitting for regression and correlation using
  numerical optimization, multiple regression, confidence intervals using the
  bootstrap, an introduction to Bayesian analysis, and basic machine
  learning.
* A semester-long version of the code-for-reproducibility course. Expanding on
  the summer course, we put more weight on training in tools for increasing
  analysis and coding efficiency, such as the command line, and text editors,
  as well as automated tools for testing and analysis such as scripting and
  dependency tracking.  The final project involves a more substantial, more
  open-ended data analysis on topics chosen by the group, and we use
  code-to-learn methods to cover concepts related to the specific data analysis topic.
* Three half-semester "connector" courses, where the foundation course in
  either version is a prerequisite.  These courses use the same pedagogy as
  the foundation course, but expand on foundation content into specific fields
  or applications.  We plan three of these courses.  The first is an course on
  probability, starting with simulation, and developing more mathematical
  understanding.  The second is an extended treatment of statistical analysis,
  with a basis in resampling.  It will cover multiple hypothesis testing,
  multi-factor ANOVA designs, and extensions of ANOVA models.  The third will
  be a application of foundation methods to computational social science.

[^cfd2020]: <https://matthew-brett.github.io/cfd2020>
[^data8]: <https://www.inferentialthinking.com>

## Strategy

<!---
How will you ensure broad access to the training? What approaches will
you take to ensure diversity and inclusion? How will you ensure the long-term
sustainability of the training resources?  ~1 page.
-->

## Value and Impact

<!---
What is the rationale for the proposed use of resources?  How will you develop
added value over existing resources? How will you measure success?  ~0.5
pages.
-->

## Team & Management

<!---
How will you manage the project? Please include details regarding project
governance, and approach to community input/feedback. You do not need to
duplicate information captured in the Capability to Deliver. ~0.5 pages.
-->
