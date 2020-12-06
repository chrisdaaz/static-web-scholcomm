---
title: Bibliography
weight: 22
---

This annotated bibliography provides an overview of how static websites can be used for scholarly purposes. It includes publications representing a variety of communities, including libraries, digital humanities, and open source software. The citations included in this bibliography --with few exceptions-- focus on librarians and scholars who use static websites for their work. 

{{< toc >}}

## Articles

Becker, Devin, Evan Williamson, and Olivia Wikle. 2020. “[CollectionBuilder-CONTENTdm: Developing a Static Web ‘Skin’ for CONTENTdm-Based Digital Collections](https://journal.code4lib.org/articles/15326).” _The Code4Lib Journal_, no. 49 (August).

- Becker et al. introduce a workflow and toolset for developing custom static websites for collections in the University of Idaho Library's CONTENTdm digital asset management system. They do this in order to supplement the public-facing features of their collection management system with a friendlier user-interface and "[collections as data](https://collectionsasdata.github.io/)" export features. This article also includes a brilliant overview of their Git/GitHub-based workflow.

---

Diaz, Chris. 2018. “[Using Static Site Generators for Scholarly Publications and Open Educational Resources](https://journal.code4lib.org/articles/13861).” _The Code4Lib Journal_, no. 42 (November).

- This article reports on experiences using Jekyll and Bookdown for library publishing projects at Northwestern University. 

---

Gil, Alex, and Kaiama L. Glover. 2016. “The Sx:Archipelagos Project](https://hcommons.org/deposits/item/hc:11841/),” Humanitites Commons. 

- This paper reports on the planning and execution of a new platform for publishing peer-reviewed scholarship using minimal computing principles. The platform uses technologies that minimize the social/labor costs of scholarly publihsing, namely plain text (Markdown) and static site generators (Jekyll). The result can be seen in [archipelagos: a journal of Caribbean digital praxis](http://archipelagosjournal.org/) and replicated with their [workflow](http://archipelagosjournal.org/workflow.html)

---

Gil, Alex. 2015. “[The User, the Learner and the Machines We Make · Minimal Computing](https://go-dh.github.io/mincomp/thoughts/2015/05/21/user-vs-learner/).” Minimal Computing: A Working Group of GO::DH. May 21, 2015.

- This is the canonical essay on minimal computing in digital humanities. Minimal computing centers around the question, "what do we need?" Scholarly communications librarians need resources for publishing academic texts online in order to be discovered and accessed by the public without restrictions. This can be accomplished with an open source static site generator, basic web hosting, and minimal maintenance costs. Importantly, the essay asks us to "displace [our] reliance on 'user friendly' mechanisms," like content management systems and hosted platforms, for smaller technical infrastructures, like plain text and static websites, that are cheaper to sustain and easier to preserve.

---

Lewis, David W., Lori Goetsch, Diane Graves, and Mike Roy. 2018. “[Funding Community Controlled Open Infrastructure for Scholarly Communication: The 2.5% Commitment Initiative](https://doi.org/10.5860/crln.79.3.133)" _College & Research Libraries News_.

- Personally, this call for community action toward sustainable open infrastructure for scholarly commmunication motivated me to think about static web technologies as _microinfrastructures_ for [an open scholarly commons](https://scholarlycommons.net/) that **individual** librarians can leverage toward the common goal. Open scholarly publishing infrastructure is not exclusively the realm of coordinated investments by institutions; it is also activities that individuals can support with fundamental computing resources.  

---

Newson, Kaitlin. 2017. “[Tools and Workflows for Collaborating on Static Website Projects](https://journal.code4lib.org/articles/12779).” The Code4Lib Journal, no. 38 (October).

- Newson introduces static site generators for digital library projects with a case study involving a digitized maps collection. Newsom explains how static site generators work and discusses their advantages and disadvantages for team projects.

---

Seo, Joo Young, and Sean McCurry. 2019. “[LaTeX Is NOT Easy: Creating Accessible Scientific Documents with R Markdown](http://dspace.calstate.edu/handle/10211.3/210398).” _Journal on Technology and Persons with Disabilities_ 7 (16).

- Seo and McCurry study the accessibility of authoring tools for scientific documents (i.e. documents that require math formulas, embedded graphics, figures, and bibiliographic citations) and introduce the Accessible RMarkdown Online Writer, a web-based authoring tool for blind and low-vision writers of scientific content. They argue that plain text formats make authoring scientific information more accessible to blind and low vision people. However, the predominate plain text format for scientific writing, LaTeX, has a steep learning curve and one output format: PDF. Markdown, on the other hand, is a semantically rich plain text format with a simpler syntax, support for LaTeX math, and wider range of output formats: HTML, PDF, Microsoft Word, RTF, EPUB, PowerPoint, etc.

---

Varner, Stewart. 2017. “[Minimal Computing in Libraries: Introduction · Minimal Computing](https://go-dh.github.io/mincomp/thoughts/2017/01/15/mincomp-libraries-intro/).” Minimal Computing: A Working Group of GO::DH. 2017.

- Varner unpacks the hidden costs and labor involved in managing web services in order to make a case for minimal computing approaches, including but not limited to static websites. 

---

## Tutorials

“[Fundamentals: YAML & Markdown](https://gettypubs.github.io/quire/guide/fundamentals/).” 2020. In _Quire: Multiformat Book Publishing_. J. Paul Getty Trust, Los Angeles. 

- This is a chapter from the manual for Quire, a multiformat book publishing program, but it is an excellent introduction to the fundamentals of Markdown and YAML in the context of a static site generator for book publishing. The concepts covered in the chapter are essential to using any static site generator. There's also some important guiance on converting documents from Microsoft Word to plain text.  

---

Simpkin, Sarah. 2015. “[Getting Started with Markdown](https://programminghistorian.org/en/lessons/getting-started-with-markdown).” Programming Historian.

- This tutorial --written for humanities scholars-- is a web-based introduction to the Markdown syntax. Markdown is a fundamental content format for static site generators and is applicable in a variety of scholarly contexts, as explained by [Tenen & Wythoff, 2014](https://programminghistorian.org/en/lessons/sustainable-authorship-in-plain-text-using-pandoc-and-markdown).

---

Tenen, Dennis, and Grant Wythoff. 2014. “[Sustainable Authorship in Plain Text Using Pandoc and Markdown](https://programminghistorian.org/en/lessons/sustainable-authorship-in-plain-text-using-pandoc-and-markdown).” Programming Historian.

- This tutorial and essay is a deep-dive into plain text for scholarly writing. The essays makes a case for the use of plain text formats for scholarly writing, distribution, and preservation. The tutorial, in addition to teaching the fundamentals of markdown syntax, covers the basic use of [Pandoc](https://pandoc.org), an open source command-line tool for converting documents between formats. Pandoc is an essential tool for digital publishing production and basic web development. 

---

P2PU. 2020. “[Course-in-a-Box: An open-source project for creating online courses](https://course-in-a-box.p2pu.org).” 

- Course-in-a-Box is a tutorial and instructional guide for creating free course websites on GitHub. The tutorial teaches you to use Markdown and YAMl in the GitHub web interface to create and publishing a static website. No installation of software is required, but everything covered in the instructions is applicable for using static site generators (specifically Jekyll). 

Visconti, Amanda. 2016. “[Building a Static Website with Jekyll and GitHub Pages](https://programminghistorian.org/en/lessons/building-static-sites-with-jekyll-github-pages).” _Programming Historian_. 

- Visconti provides a guided lesson on using the [Jekyll](https://jekyllrb.com/) static site generator and [GitHub](https://github.com/) for creating an entirely free, easy-to-maintain, preservation-friendly, secure website over which you have full control, such as a scholarly blog, project website, or online portfolio." The section on "What are static sites, Jekyll, etc. & why might I care?" is an excellent introduction. Jekyll, like Hugo, is an excellent static site generator for digital scholarship use cases.

---

Williamson, Evan. 2019. “[Web Crash Course! An Intro to Basic Web Concepts Using GitHub and GitHub Pages](https://evanwill.github.io/web-crash-course/).” Web-Crash-Course. 2019. 

- This is an excellent practical introduction to web technologies. It covers the basic tools and concepts people need to begin working with websites in any context, including text editors, HTML, CSS, and JavaScript. Most of the readings and content on static site generators assume some knowledge of HTML, CSS, and JavaScript. If you're at all unclear about the functions HTML, CSS, and JavaScript in creating websites, I **highly** recommend this web course. 

---

Williamson, Evan. 2020. “[Introduction to Creating Websites with GitHub Pages and Jekyll](https://evanwill.github.io/go-go-ghpages-b/).” Go-Go Gh-Pages! 

- This is an excellent introduction to using GitHub for static site publishing. From the website: "This workshop will introduce using free hosting from GitHub Pages integrated with the popular static website generator Jekyll. Along the way we will cover the basics of GitHub, HTML, Markdown, and Jekyll. You will learn how to set up a project repository, write content in Markdown, and publish your site, all using GitHub’s user friendly web interface. More advanced usage of Jekyll for local web development is introduced final section." Follow along with the [videos](https://www.youtube.com/watch?v=moJgWrD6dwg) for the full workshop experience.

---

Williamson, Evan. 2018. “[OER on GitHub What, Why, & How](https://evanwill.github.io/make-oer/).” Make OER!

- This workshop covers the basics of using GitHub for Open Educational Resources (OER). The materials include examples of OER on GitHub, information about textbook costs and the value proposition of OER, and resources for learning.

---

## Podcasts

Abdalla, Safia, Kevin Ball, and Christopher Hiller. 2019. “[Our Thoughts and Experiences with SSGs (JS Party #59)](https://changelog.com/jsparty/59).” Changelog.

- JS Party is a JavaScript focused podcast. In this episode, the hosts define static site generators in terms of how they fit in the history of the web and modern web development. During the first 20 minutes, they walk through the process of evaluating the usefulness of a static site generator for a project. For example, how often does the site's content change? What workflows and permissions do you need to support for content updates? What do the users of the site need to be able to do? The rest of the episode includes personal experiences using static site generators in professional contexts and musings about the future of static site generators for web developers.

---

Nantz, Eric, and Xie Yihui. 400AD. “[Episode 24: Yihui Xie Returns (Rstudio::Conf 2018)](https://www.r-podcast.org/episode/024-rstudioconf-yihui-xie/).” The R-Podcast. 

- This podcast includes interviews and advice on using the R programming language for statistical computing. This episode features an interview with Yihui Xie, the inventor of several popular R packages, among them: Blogdown and Bookdown. Both of these packages create static websites from R Markdown, which is a version of Markdown that can execute R code while exporting to various formats, including PDF and HTML formats. Blogdown and Bookdown, as the names suggest, help with making blogs (actually, any kind of website) and books. The [Bookdown](https://www.bookdown.org/) package, in particular, is an excellent package for building OER textbooks and scholarly monographs because it supports bibiliographic references, math formatting, and several output formats: websites, PDFs, EPUB, and Microsoft Word documents. Xie discusses the motivations for creating packages that help streamline the process for writing and publishing reproducible research documents. He also touches on the benefits of markdown for writers: forces writers to focus on the content (rather than the style) and for portability to multiple systems. The second half of the interview focuses on process for developing the packages and his perspective of being an author of open access books.

---

Price Lab for Digital Humanities. 2020. "[Dream Lab Podcast • Episode 5 • Alex Gil • Minimal Computing](https://soundcloud.com/price-lab/dream-lab-podcast-episode-5-minimal-computing)".

- Price Lab for Digital Humanities at the University of Pennsylvania interviews Alex Gil of Columbia University Libraries about minimal computing. Minimal computing is a mode of creating digital scholarship under intentional contraints of hardware and software in order to facilitate long-term access to scholarly artifacts. The conversation features [Wax](https://minicomp.github.io/wiki/wax/), which is a methodology and framework for creating a static website for primary source images online. Using the example of Wax for digital exhibits, Gil discusses the challenges traditional digital exhibit platforms produce for libraries in maintaining them for longevity.

---

Tolinski, Scott, and Wes Bos. n.d. [Why Static Site Generators Are Awesome — Syntax Podcast 034](https://syntax.fm/show/034/why-static-site-generators-are-awesome). Accessed November 12, 2020. .

- Skip to minute 8:00 for an introduction to static site generators and why they are attractive to front-end web developers. The hosts are primarily JavaScript developers, so they go into a lot of advanced use cases for static site generators in more business-oriented contexts, but they do a good job covering the key concepts of the technology. This conversation includes talking points that could be especially useful for building a case with your technology managers and IT departments for use static site generators for library-supported digital projects.