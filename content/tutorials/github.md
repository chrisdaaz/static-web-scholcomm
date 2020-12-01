---
title: "GitHub for Static Web Publishing"
weight: 20
---

This tutorial introduces [GitHub](https://github.com/) as a static website publishing platform. No installation of any software is required, however, you will need a GitHub account. **This tutotial is estimated to take between 30 and 60 minutes to complete.**

**Topics Covered**

{{< toc >}}

## Library Publishing Scenario: OER Textbook Publishing

A faculty member in the social sciences wants to make an open textbook on quantitative methods. The textbook will teach basic data analysis with the R programming language. The faculty member is very knowledgable about R for statistical analysis, but less knowledgable about GitHub and web publishing.

## Git and GitHub

[Git](https://git-scm.com/) is a version control system that tracks project files over time. It was developed to help software development teams work on the same projects using a distributed and structured workflow. When Git is initialized on a project folder, the folder becomes a _Git repository_. Git takes snapshots of the project each time someone makes a `commit`. Each `commit` in the project's history measures the difference between snapshots down to the specific line and characters within files. 

[GitHub](https://github.com) is a platform for sharing and collaborating on projects that are stored as Git repositories. With GitHub, people can share their code projects publicly, license their code, publish packages, report bugs, request features, and troubleshoot software problems. The collaboration, editorial, and publishing features that GitHub provides to code projects are also available writing and editing plain text because code and plain text are essentially the same thing. 

Together, Git and GitHub enable people a free method of sharing and publishing their work online. We'll be using GitHub features to create, build, and deploy an open textbook using a template that's available on GitHub.

## Start with an Open Textbook Template

This tutorial is entirely web-based, so we'll need to have a few browser tabs open to perform a few of the tasks. First, in another browser tab, log in to your [GitHub](https://github.com) account. We will copy and adapte an existing git repsository on GitHub in order to make our open textbook.

To do this, we will need to "fork" an existing repository. When you create a fork on GitHub, you create a copy of someone elses git repository _on your GitHub account_ in order create your own version of the project.

[This repository](https://github.com/chrisdaaz/minibookdown) contains the code you will need to begin creating your own open textbook. [Visit the repository](https://github.com/chrisdaaz/minibookdown) in your web browser and click on the "Fork" button near the top of the page.

After this step, you should have a repository under your account at a web address that looks like this: `https://github.com/YOUR_USER_NAME/minibookdown`

## Customize Your Open Textbook

The template repository we forked to your account contains the bare minimum of a [Bookdown](https://bookdown.org) project. Bookdown is a very popular open source tool for writing and publishing technical and scientific books from [R Markdown](https://rmarkdown.rstudio.com/) files. We don't need to know anything about the R programming language or statical computing to use Bookdown for formating and publishing open textbooks. We'll be using Bookdown to create the   

You now have the beginning of an open textbook on your GitHub account. Only you have the ability to edit the files within this open textbook project. GitHub, in addition to being a host for source code files, is also a basic file editing system. 

- From the main page of your repository, click on the `index.Rmd` file.
- To edit the file, click on the pencil icon near the right side of the page
- Edit theses lines with the working title of your textbook (this can be changed at any time) and the name of the author:

```
title: "A Mini Bookdown"
author: "Your Name"
```

To add chapters, you can create more `.Rmd` files in GitHub to add them to your open textbook. You can [follow in the instructions in the Bookdown manual](https://bookdown.org/yihui/bookdown/usage.html) to continue adding and editing the contents of your open textbook.

## Publish Your Open Textbook

There are a few more updates that you need to make to your repository to make your textbooks publicly available. First, you'll need to create an `ACCESS_TOKEN` to give Github permission to build your textbook. 

- Open a new tab and [create a new personal access token](https://github.com/settings/tokens/new). 
- Confirm your password to access to the settings menu
- Enter a name for the access token in the "Note" field of the form: `minibookdown`
- Click on the box next to `repo` to give this token access to your repositories.
- Scroll down and click on `Generate token`
- The personal access token is a string of alphanumeric characters. Copy this string to your clipboard and keep this tab open. 

Now, we will need to add this token to your textbooks repository's secrets. While code in Github repositories are public, personal access tokens are things you should never make public. GitHub allows you to store "secrets" in your Github repository that only you can see. Let's add your personal access token to your secrets:

- In a new tab, go to your forked `minibookdown` repository. 
- Click on the `Settings` tab
- Cick on the `Secrets` option in the sidebar
- We can create secrets by clickon the the `New repository secret` button

We're actually going to create two secrets. We can create a secret for the repository Each secret needs a **name** and a **value**: 

- Name the first secret `ACCESS_TOKEN` and paste your personal access token into the value field. Click Add secret.
- Name the second secret `EMAIL` and type in your email address. We'll need this to give you status updates about your textbook (more on this later). Click Add secret.

We have now set up GitHub convert your textbook markdown files into a website. You can view it by going to [https://your-github-username.github.io/minibookdown/](https://your-github-username.github.io/minibookdown/).