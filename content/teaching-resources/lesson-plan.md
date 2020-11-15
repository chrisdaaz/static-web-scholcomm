---
title: Lesson Plan
weight: 11
notes: "The lesson plan will include the following elements: an introduction to the topic, learning objectives, examples from academic subject areas, and learning activities. The learning activities will simulate real-world scenarios where knowledge of and experience with static websites may be useful on the job. The scenarios can either be used as discussion questions or homework prompts."
---

This lesson plan covers basic concepts, applications, and activities for learning about static websites in a digital scholarship context.

##  Learning Objectives

- Identify examples of open infrastructure for scholarly communications

- Describe the differences between static and dynamic websites 

- Recommend web publishing options to students and faculty

- Produce and transform plain-text documents for editing, publishing, and archiving

## What is a static website?

Static websites are generated _before_ they become available online, whereas dynamic websites are generated _each time_ someone visits the website. 

The term **static** refers the files that make up the website. Static websites are primarily `.html`, `.css`, and `.js` files. They might also contain digital assets for images (`.jpeg`, `.png`, `.gif`, etc.), data (`.json`, `.csv`, etc.), documents (`.pdf`, `.docx`, etc.), and media (`.mov`, `.ogg`, `.mp3`, `.mp4`, etc.). 

All of the files in a static website are pre-built, rather than dynamically generated. They do not require databases, software updates, and security patches. This makes them cheaper to host and easier to maintain. 

Dynamic websites are most of the websites we use every day. Dynamic websites store content in databases and use web servers to process HTTP requests from vistors of the website. Often, dynamic websites are managed by a content management system (CMS), like WordPress, to interact with the database through an intiutive user interface. This make them attractive for websites that require permissions-based access, e-commerce, or social interactions.

In order to make dynamic websites user-friendly, they depend upon application software that needs to be maintained for usability and security. This requires continuing investment from the stakeholders responsible for managing the website. Whereas static websites prove read-only permissions, dynamic websites provide read/write permissions. 

Scholarly publications and digital scholarship projects serve a different mission than most websites. Once the publication or project is complete, it is expected to exist in a fixed state and accessible in perpetuity for consumption and citation. Static websites provide the durability we expect from scholarship.   

**Static websites and digital humanities**

Read: Gil, Alex. 2015. “The User, the Learner and the Machines We Make · Minimal Computing.” Minimal Computing: A Working Group of GO::DH. May 21, 2015. https://go-dh.github.io/mincomp/thoughts/2015/05/21/user-vs-learner/.

Activity: 

- Read "[Getting Started with Markdown](https://doi.org/10.46430/phen0046)" to learn the basic syntax
- Write a markdown version of your resume/CV in a text editor (such as [Dillinger](https://dillinger.io/))
- Convert your resume/CV from markdown to HTML5 with [Pandoc](https://pandoc.org/try/) 
- Save the HTML5 code to a file called `resume-cv.html`

**JAMstack**

JAMstack is an architecture for building static websites with dynamic features. JAMstack separates the front-end interface from the backend database in order to produce websites that are less vulnerable to software degredation and security risks. When publishing scholarly texts online, scholarly communications librarians rarely need backend database features. We really only need the frontend to provide stable, unlimited online access to web publications. 

| Frontend Features | Backend Features |
|-------------------|------------------|
| Public HTML interface | Server-rendered web pages |
| Metadata (JSON/HTML) | Storing user credentials |
| Full-text PDF download | Managing e-commerce transactions |

Activity:

- Watch at least first 6 minutes of "[What is the JAMstack? and let's BUILD one](https://youtu.be/Sh1i-gMH4bo)"

- Examine three publishing tools from the Catalogue in “[Mind the Gap: A Landscape Analysis of Open Source Publishing Tools and Platforms](https://mindthegap.pubpub.org/)” and make a case for why each tool is or is not an example of JAMstack in scholarly communications. 

**Open Infrastructure for Scholarly Communications**

Read: Skinner, Katherine. 2019. “Why Are So Many Scholarly Communication Infrastructure Providers Running a Red Queen’s Race? | Educopia Institute.” July 23, 2019. https://educopia.org/red-queens-race/.

Discussion: In what ways do static websites address or complicate the impediments to sustaining scholarly communication resources Skinner outlines? 




