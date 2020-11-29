---
title: "Static Websites for Digital Scholarship"
weight: 10
notes: "The lesson plan will include the following elements: an introduction to the topic, learning objectives, examples from academic subject areas, and learning activities. The learning activities will simulate real-world scenarios where knowledge of and experience with static websites may be useful on the job. The scenarios can either be used as discussion questions or homework prompts."
description: "This Lesson will introduce static website technologies as open infrastructure for scholarly communications."
---

This lesson plan provides an a la carte menu of learning modules for teaching static web technologies for digital scholarship and scholarly communications librarianship. Each topic includes a learning objective and recommended readings, viewings, or tutorials for use in workshops or seminars. 

**Topics:**

{{< toc >}}

## Static vs Dynamic Websites

{{< hint info >}}

**Learning Objective:** After examining this topic, participants will be able to describe the differences between static and dynamic websites.

{{< /hint >}}

Most of the websites we use every day are dynamic websites. Dynamic websites store content in databases and use web servers to generate web pages upon each visit. Often, dynamic websites are managed by a content management system (CMS), like [WordPress](https://wordpress.org/), [Drupal](https://www.drupal.com/), or [Omeka](https://omeka.org/). This make them attractive for websites that require permissions-based access, e-commerce, or social interactions. However, dynamic websites need continuing resources for software updates, maintenance, and security.

{{< figure src="http://www.getty.edu/publications/images/digitalpipeline-traditional.gif" title="Traditional (dynamic) website publishing" link="http://www.getty.edu/publications/digital/platforms-tools.html" caption="Content stored in a database is processed by a web server in order to be displayed on the device (Image courtesy of Quire by J. Paul Getty Trust)" >}}

Static websites do not use databases to store content or web servers to dynamically generate web pages; instead, the web pages are pre-built on a personal computer using a static site generator and stored as static HTML files on a public web server, thereby eliminating the need for database security and routine software updates for servers. This makes them cheaper to host and easier to maintain.

{{< figure src="http://www.getty.edu/publications/images/digitalpipeline-static.gif" title="Static-site publishing" link="http://www.getty.edu/publications/digital/platforms-tools.html" caption="Content is generated on a computer and uploaded to web server in order to be displayed as-is on the user's device (Image courtesy of Quire by J. Paul Getty Trust)" >}}

Static websites used to make up the majority of the web in the 1990's. People would write HTML code (i.e. "markup") for every page and upload the files to a public web server. Today, people use static site generators to reduce the amount of code needed to create websites. These are command-line tools that fill HTML templates with content in order to build a fully-functioning website that can be uploaded to any web server.

{{< hint warning >}}

**Recommended Reading:** Newson, Kaitlin. 2017. “[Tools and Workflows for Collaborating on Static Website Projects](https://journal.code4lib.org/articles/12779).” _The Code4Lib Journal_, no. 38 (October). .

Newson introduces static site generators for digital library projects with a case study involving a digitized maps collection. Newsom explains how static site generators work and discusses their advantages and disadvantages for team projects.

{{< /hint >}}

Static websites have gained in popularity in the open source web development community with the rise of [JAMstack](https://jamstack.org). JAMstack is an architecture for building websites using static site generators (of which [there are hundreds of open source options](https://jamstack.org/generators/)). JAMstack separates the front-end interface from the backend database in order to produce websites that are less vulnerable to software degredation and security risks. When publishing scholarly texts online, scholarly communications librarians rarely need backend database features. We primarily need the front-end to provide stable, unlimited online access to web publications. 

| Frontend Features | Backend Features |
|-------------------|------------------|
| Public HTML interface | Server-rendered web pages |
| Metadata (JSON/HTML) | Storing user credentials |
| Full-text PDF download | Managing e-commerce transactions |

{{< hint warning >}}

**Recommended Viewing:** Watch at least first 6 minutes of "[What is the JAMstack? and let's BUILD one](https://youtu.be/Sh1i-gMH4bo)"

_Follow-up activity:_ Examine three publishing tools from the Catalogue in “[Mind the Gap: A Landscape Analysis of Open Source Publishing Tools and Platforms](https://mindthegap.pubpub.org/)” and make a case for why each tool is or is not an example of JAMstack in scholarly communications.

{{< /hint >}}

## Plain Text vs Rich Text 

{{< hint info >}}

**Learning Objective:** Produce and transform plain-text documents for editing, publishing, and archiving

{{< /hint >}}

Static site generators require content and styles to be stored as _plain_ text. There are two main types of documents we use to write and edit text: [plain-text](https://en.wikipedia.org/wiki/Plain_text) and [rich text](https://en.wikipedia.org/wiki/Formatted_text). Most of us are trained to use rich text editors: emails, word documents, content management systems. This is for good reason: they're easy to use and we need them for everyday things. Plain text exposes the raw, semantic characters within a document, whereas rich text displays the formatting features and styles. For librarians, plain text offers some advantages over rich text, as Tenen and Wythoff ([2014](https://doi.org/10.46430/phen0041)) explain: 

> Plain text both ensures transparency and answers the standards of long-term preservation. MS Word may go the way of [Word Perfect](https://en.wikipedia.org/wiki/WordPerfect) in the future, but plain text will always remain easy to read, catalog, mine, and transform. Furthermore, plain text enables easy and powerful versioning of the document, which is useful in collaboration and organizing drafts. Your plain text files will be accessible on cell phones, tablets, or, perhaps, on a low-powered terminal in some remote library. Plain text is backwards compatible and future-proof. Whatever software or hardware comes along next, it will be able to understand your plain text files.

|            | File Formats            | Editors                    |
| ---------- | ----------------------- | -------------------------- |
| Plain text | `.xml`, `.html`, `.md`  | Notepad, TextEdit, VS Code |
| Rich text  | `.docx`, `.rtf`, `.odt` | Microsoft Word, Scrivener  |

Coming to a plain text editor from a word processing program (like Microsoft Word), might feel like writing computer code rather than text for humans. That is because there is little material difference between plain text and code. Plain text is the format software developers use to write code. The only differences between code and text is the content and file extension. Plain text editors are not exclusive to writing code or reading data; people can write fiction in plain text ([and some do](https://ianhocking.com/twl/2013/06/22/writing-a-novel-using-markdown/)). 

{{< hint warning >}}

**Recommended Tutorial:** Tenen, Dennis, and Grant Wythoff. 2014. “[Sustainable Authorship in Plain Text Using Pandoc and Markdown](https://programminghistorian.org/en/lessons/sustainable-authorship-in-plain-text-using-pandoc-and-markdown).” _Programming Historian_, March. 

{{< /hint >}}

## Static Websites in Academic Contexts

{{< hint info >}}

**Learning Objective:** Recommend web publishing options to students and faculty

{{< /hint >}}

### Digital Humanities

Read: Gil, Alex. 2015. “The User, the Learner and the Machines We Make · Minimal Computing.” Minimal Computing: A Working Group of GO::DH. May 21, 2015. https://go-dh.github.io/mincomp/thoughts/2015/05/21/user-vs-learner/.

Activity: 

- Read "[Getting Started with Markdown](https://doi.org/10.46430/phen0046)" to learn the basic syntax
- Write a markdown version of your resume/CV in a text editor (such as [Dillinger](https://dillinger.io/))
- Convert your resume/CV from markdown to HTML5 with [Pandoc](https://pandoc.org/try/) 
- Save the HTML5 code to a file called `resume-cv.html`

### Statistics


### Museums

## Open Infrastructure for Scholarly Communications

{{< hint info >}}

**Learning Objective:** After examining this topic, participants will be able to identify challenges in developing and sustaining an open infrastructure for scholarly communications. 

{{< /hint >}}

The acquisitions of the [Social Science Research Network (SSRN)](https://www.ssrn.com/index.cfm/en/) and [bepress](http://bepress.com/) by [Elsevier](https://www.elsevier.com/) revealed a ["need for community-based scholarly communication infrastructure"](https://sparcopen.org/news/2017/elsevier-acquisition-highlights-the-need-for-community-based-scholarly-communication-infrastructure/) by many within the academic library community. SSRN is preprint repository for social sciences and humanities research, [founded by economists](https://en.wikipedia.org/wiki/Social_Science_Research_Network). Bepress began as an open access, academic journal publishing platform provider, [founded by legal scholars](https://en.wikipedia.org/wiki/Bepress), and eventually expanded its product list to include a hosted [institutional repository](https://en.wikipedia.org/wiki/Institutional_repository) platform. Both SSRN and bepress provided scholars with open access alternatives to exlusively publishing their work in subscription-access journals. Hundreds of academic libraries around the world subscribed to bepress products to support their scholarly communications iniatives. For academic library customers, the news of the bepress acquisition in particular meant that their primary vehicle for open access publishing was suddenly owned by one of the largest commercial scientific journal publishers in the world.  

This led to the "2.5% Commitment," a famous call to action by David W. Lewis, Dean of the [IUPUI University Library](http://ulib.iupui.edu/) at the time. In it, Lewis urges libraries to contribute 2.5% of its total budget to "support the common infrastructure needed to create the open scholarly commons... Collectively we would take responsibility for curating and preserving the world’s scientific, scholarly, and cultural heritage thus making it discoverable and freely available to everyone in the world now and in the future" [Lewis, 2017](https://scholarworks.iupui.edu/handle/1805/14063). Open source software is a key example of the types of contributions academic libraries can make toward this goal; however, open source software can be difficult to use and expensive to maintain. 

**Readings:**

“[Elsevier Acquisition Highlights the Need for Community-Based Scholarly Communication Infrastructure](https://sparcopen.org/news/2017/elsevier-acquisition-highlights-the-need-for-community-based-scholarly-communication-infrastructure/).” 2017. SPARC. September 6, 2017.

Lewis, David W. 2017. “[The 2.5% Commitment](https://doi.org/10.7912/C2JD29).” Working Paper. https://doi.org/10.7912/C2JD29.

Skinner, Katherine. July 23, 2019. “[Why Are So Many Scholarly Communication Infrastructure Providers Running a Red Queen’s Race?](https://educopia.org/red-queens-race/)." _Educopia Institute_. 

**Discussion Questions:**

- In what ways do static websites address or complicate the impediments to sustaining scholarly communication resources Skinner outlines?



