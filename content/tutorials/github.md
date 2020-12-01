---
title: "GitHub for Static Web Publishing"
weight: 11
---

This tutorial introduces [GitHub](https://github.com/) as a free static website publishing platform. No installation of any software is required, however, you will need a GitHub account. By the end of this tutorial, you will have your own version of an open textbook [template](https://bookdown.org/yihui/bookdown-demo/) available to your further editing. **This tutotial is estimated to take between 30 and 60 minutes to complete.**

**Prerequisities**

- A free [GitHub](https://github.com/) account
- Familarity with [basic Markdown](https://bookdown.org/yihui/bookdown/markdown-syntax.html) and [YAML](https://bookdown.org/yihui/bookdown/r-markdown.html#r-markdown) syntax

**Topics Covered**

{{< toc >}}

## Scenario: OER Textbook

A faculty member in the social sciences wants to make an open textbook on quantitative methods. The textbook will teach basic data analysis with the R programming language. The faculty member is very knowledgable about R for statistical analysis, but less knowledgable about GitHub and web publishing.

## Start with an Open Textbook Template

Rather than starting from scratch, we are going to reuse an existing project for our own purposes. [GitHub](https://github.com) is a platform for sharing and collaborating on projects that are stored as [Git](https://git-scm.com/) repositories. With GitHub, people can share their code projects publicly, license their code, publish packages, report bugs, request features, and troubleshoot software problems. Together, Git and GitHub enable people a free method of sharing and publishing their work online. We'll be using GitHub features to create, build, and deploy an open textbook using a template that's available on GitHub.

First, log in to your [GitHub](https://github.com) account. We will copy and adapt an existing git repository on GitHub in order to make our open textbook. To do this, we will need to "fork" an existing repository. When you create a fork on GitHub, you create a copy of someone elses git repository _on your GitHub account_ in order create your own version of the project.

- Visit this repository: https://github.com/chrisdaaz/minibookdown
- Click on the "Fork" button near the top of the page

The `minibookdown` repository contains the code we will need to begin creating your own open textbook. You should now have a repository under your account at a web address that looks like this: `https://github.com/YOUR_USERNAME/minibookdown`

## Customize Your Open Textbook

The `minibookdown` repository we forked to your GitHub account contains the bare minimum of a [Bookdown](https://bookdown.org) project. Bookdown is a popular open source tool for writing and publishing technical and scientific books from [R Markdown](https://rmarkdown.rstudio.com/) files. We don't need to know anything about the R programming language or statical computing to use Bookdown for formating and publishing open textbooks. Bookdown will generate PDF, HTML, EPUB, and Word document versions of our open textbook for us.

GitHub, in addition to being a host for source code files, is also a basic file editing system. 

- From the main page of your repository, click on the `index.Rmd` file.
- To edit the file, click on the pencil icon near the right side of the page
- Edit these lines with the working title and author of your textbook (make sure that the title and authors are in double quotations):

```
title: "A Mini Bookdown"
author: "Your Name"
```
To add chapters, you can create more `.Rmd` files to your repository:

- From the main page of your repository (`https://github.com/YOUR_USERNAME/minibookdown`), click on the "Add file" button and select "Create new file"
- Set the file name. The name needs to begin with two numbers to represent the chapter number, followed by a hyphen (`-`), the chapter title, and the R Markdown file extention (`.Rmd`). For example: `01-introduction.Rmd`
- The first line of the file should start with a hash symbol `#` to represent the chapter title.
- The contents of the chapter can be written using [Markdown](https://www.markdownguide.org/) or [R Markdown](https://rmarkdown.rstudio.com/index.html) plain text syntax. 

You can [follow in the instructions in the Bookdown manual](https://bookdown.org/yihui/bookdown/usage.html) to continue adding and editing the contents of your open textbook.

## Publish Your Open Textbook

There are a few more updates that you need to make to your repository to make your textbooks publicly available. First, you'll need to create an `ACCESS_TOKEN` to give Github permission to build your textbook. This token grants GitHub programmatic access to the contents of your open textbook repository. Specifically, this will enable GitHub to automatically run the Bookdown software to update the HTML, PDF, EPUB, and Word document output versions of the textbook whenever you update the repository's source code.

- Open a new tab and [create a new personal access token](https://github.com/settings/tokens/new). 
- Confirm your password to access to the settings menu
- Enter a name for the access token in the "Note" field of the form: `minibookdown`
- Click on the box next to `repo` to give this token "Full control of private repositories" 
- Scroll down and click on `Generate token`
- The personal access token is a string of alphanumeric characters. Copy this string to your clipboard (or somewhere secure for easy reference) and keep this tab open. 

Now, we will need to add this token to your textbooks repository's secrets. While code in Github repositories are public, personal access tokens are things you should never make public. GitHub allows you to store secrets in your Github repository, like access tokens, that only you can see. Let's add your personal access token to your repository's secrets:

- In a new tab, go to your `minibookdown` repository. 
- Click on the `Settings` tab
- Cick on the `Secrets` option in the sidebar
- We can create secrets by clicking on the the `New repository secret` button

We're actually going to create two secrets. Each secret needs a **name** and a **value**: 

- Name the first secret `ACCESS_TOKEN` and paste your personal access token into the value field. Click Add secret.
- Name the second secret `EMAIL` and type in your email address. We'll need this to give you status updates about your textbook (more on this later). Click Add secret.

We have now set up GitHub convert your textbook markdown files into a website. Each time you update any `.Rmd` file in your repository, GitHub will build and publish your open textbook to a public web address. You can view it by going to [https://your-github-username.github.io/minibookdown/](https://your-github-username.github.io/minibookdown/).