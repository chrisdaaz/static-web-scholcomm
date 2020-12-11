---
title: "GitHub for Static Web Publishing"
weight: 11
---

This tutorial introduces [GitHub](https://github.com/) as a free static website publishing platform. No installation of additional software is required, however, you will need a GitHub account. By the end of this tutorial, you will have your own version of an open textbook [template](https://bookdown.org/yihui/bookdown-demo/) available for further editing. **This tutotial is estimated to take between 30 and 60 minutes to complete.**

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

{{< figure src="/static-web-scholcomm/fork.png" title="Fork the Repository" caption="Click on the `Fork` button near the top of the page" >}}

The `minibookdown` repository contains the code we will need to begin creating your own open textbook. You should now have a repository under your account at a web address that looks like this: `https://github.com/YOUR_USERNAME/minibookdown`

## Configure Textbook 

The textbook template comes with a workflow file that generates the output files for the book (i.e. the HTML, PDF, and EPUB versions). We'll need to enable the workflow file in GitHub:

{{< figure src="/static-web-scholcomm/actions.png" title="Enable Workflows in GitHub Actions" caption="Click on the `Actions` tab" >}}

- Click on the `I understand my workflows, go ahead and enable them` button

## Customize Your Open Textbook

The `minibookdown` repository we forked to your GitHub account contains the bare minimum of a [Bookdown](https://bookdown.org) project. Bookdown is a popular open source tool for writing and publishing technical and scientific books from [R Markdown](https://rmarkdown.rstudio.com/) files. We don't need to know anything about the R programming language or statical computing to use Bookdown for formating and publishing open textbooks. Bookdown will generate PDF, HTML, EPUB, and Word document versions of our open textbook for us.

GitHub, in addition to being a host for source code files, is also a basic file editing system. 

{{< figure src="/static-web-scholcomm/index.Rmd.png" title="Open the index.Rmd file in the web editor" caption="From the main page of your repository, click on the `index.Rmd` file." >}}

{{< figure src="/static-web-scholcomm/edit.png" title="Edit the index.Rmd file" caption="To edit the file, click on the pencil icon near the right side of the page" >}}

- Edit these lines with the working title and author of your textbook (make sure that the title and authors are in double quotations):

```yaml
title: "A Mini Bookdown"
author: "Your Name"
```
- Once you're ready to save your changes, scroll down to the `Commit changes` button. This is also an opportunity to explain the reasoning behing the change. By default, GitHub fills the web form with `Update FILENAME` but you can change it to something more descriptive, like `Adds book metadata`. 
- Make sure that the `Commit directly to the main branch` is selected and click on the `Commit changes` button

To add chapters, you can create more `.Rmd` files to your repository:

{{< figure src="/static-web-scholcomm/add.png" title="Add new file" caption="From the main page of your repository (`https://github.com/YOUR_USERNAME/minibookdown`), click on the `Add file` button and select `Create new file`" >}}

- Set the file name. The name needs to begin with two numbers to represent the chapter number, followed by a hyphen (`-`), the chapter title, and the R Markdown file extention (`.Rmd`). For example: `01-introduction.Rmd`
- The first line of the file should start with a hash symbol `#` to represent the chapter title.
- The contents of the chapter can be written using [Markdown](https://www.markdownguide.org/) or [R Markdown](https://rmarkdown.rstudio.com/index.html) plain text syntax. 

You can [follow in the instructions in the Bookdown manual](https://bookdown.org/yihui/bookdown/usage.html) to continue adding and editing the contents of your open textbook.

## Publish Your Open Textbook

By enabling workflow files in our repository, we've effectively programmed GitHub to build the HTML, PDF, and EPUB files for our textbook each time we update a file in our project directory. This setting is controlled by the `.github/workflows/main.yml` file on our repository. 

Each time we commit a change to one of the files, the book will re-build. This particular book takes a few minutes for changes to be made because GitHub spins up a new server, downloads our files, installs [R](https://www.r-project.org/about.html), [Pandoc](https://pandoc.org/), and [LaTeX](https://yihui.org/tinytex/), runs scripts to build the output files, then moves the output files to a new branch called `gh-pages`. The `gh-pages` branch serves as a pseudo-server; is where the HTML, epub, and PDF files for our textbook are stored for public online access. This is through the [GitHub Pages](https://pages.github.com/) hosting service for static websites.

{{< figure src="/static-web-scholcomm/gh-pages.png" title="gh-pages branch" caption="These are the static website files publicly available online." >}}

Before we can view the web version of our textbook, we have to turn on the GitHub Pages feature.

{{< figure src="/static-web-scholcomm/settings.png" title="Enable GitHub Pages in Repository Settings" caption="Click on the `Settings` tab" >}}

- Scroll down to the `GitHub Pages` heading
- In the `Source` section, click on the drop-down menu and change `None` to `gh-pages` +  `/(root}`
- Click the `Save` button

You now have a publicly available open textbook on GitHub. You can view it by going to [https://your-github-username.github.io/minibookdown/](https://your-github-username.github.io/minibookdown/).
