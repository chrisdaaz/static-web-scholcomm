---
title: "GitHub for Static Web Publishing"
weight: 20
---

This tutorial introduces [GitHub](https://github.com/) as a static website publishing platform. No installation of any software is required, however, you will need a GitHub account. **This tutotial is estimated to take between 30 and 60 minutes to complete.**

[GitHub](https://github.com) is a platform for hosting [Git](https://git-scm.com/) repositories containing source code for software packages. It's popular website for finding open source projects and communicating with users of specific software packages. While fine tuned for software development teams, GitHub is increasingly being used for academic research and writing. 

**Topics Covered**

{{< toc >}}

## Library Publishing Scenario: OER Textbook Publishing

A faculty member in the social sciences wants to make an open textbook on quantitative methods. The textbook will teach basic data analysis with the R programming language. The faculty member is very knowledgable about R for statistical analysis, but less knowledgable about GitHub and web publishing.

## Git and GitHub

Git is version control software that tracks project files over time. It was developed to help software development teams work on the same projects using a distributed and structured workflow. When Git is initialized on a folder containing project files, the folder becomes a _Git repository_. Git takes snapshots of the project each time someone makes a `commit`. Each `commit` in the project's history measures the difference between snapshots down to the specific line and characters within files. 

GitHub is a platform for sharing and collaborating on Git repositories. With GitHub, people can open source their code projects, publish packages, report bugs, request features, and troubleshoot software problems. The collaboration, editorial, and publishing features that GitHub provides to code projects are also available writing and editing plain text because code and plain text are essentially the same thing. 

- Log in to GitHub with your account

{{< button href="https://github.com/nulib-oer/minibookdown/fork" >}}
Fork this Repository
{{< /button >}}

Creating a "Fork" in GitHub is creating a copy of someone else's Git repository to your GitHub account. The Fork also creates a connection between the two repositories, allowing each repository the ability to pull and merge commits from the other repository.  


<div id="ghUsername-intro">
If you tell us your username, we can prepare some links and make things a bit easier for you. If for some reason it doesn't work, replace 'your-github-username' with your GitHub username where you see links containing 'your-github-username'
</div>

[your-github-username](https://github.com/your-github-username-set/minibookdown/)


## GitHub Actions

There are a few updates that you need to make to your repositor to get your textbook up and running working. First, you'll need to create an `ACCESS_TOKEN` to give Github permission to build your textbook. You'll need to have a few browser tabs open for this step. 

<a class="btn btn-primary" href="https://github.com/settings/tokens/new" target="_blank"><i class="fa fa-lock"></i> Create a Personal Access Token</a>

Confirm your password and give your new personal access token a name. You can name your token anything to help remind you why you created it. Once you've settled on a name, click on the box next to `repo` to give this token access to your repositories.

![New personal access token]({{site.baseurl}}/img/gh_pat.png)

Click on generate token. The personal access token is a string of alphanumeric characters. Copy this string to your clipboard and keep this tab open. 

Now, we will need to add this token to your textbooks repository's secrets. While code in Github repositories are public, personal access tokens are things you should never make public. Github allows you to store "secrets" in your Github repository that only you can see. Let's add your personal access token to your secrets:

<a class="btn btn-primary" href="https://github.com/your-github-username/minibookdown/settings/secrets/new" target="_blank"><i class="fa fa-user-secret"></i> Create a new secret</a>

We're actually going to create two secrets. Each secret needs a **name** and a **value**: 

- Name the first secret `ACCESS_TOKEN` and paste your personal access token into the value field. Click Add secret.
- Name the second secret `EMAIL` and type in your email address. We'll need this to give you status updates about your textbook (more on this later). Click Add secret.

### Give your textbook a name

Edit theses lines:

{% highlight yaml %}
title: "A Mini Bookdown"
author: "Your Name"
{% endhighlight %}

in the file [https://github.com/your-github-username/minibookdown/blob/main/index.Rmd](https://github.com/nulib-oer/minibookdown/edit/main/index.Rmd) with the working title of your textbook (this can be changed at any time) and the name of the author.

## GitHub Pages

[GitHub Pages](https://pages.github.com/) is a **free** static website hosting service offered to users of the [GitHub](https://github.com) platform. 

You can view it by going to [https://your-github-username.github.io/minibookdown/](https://your-github-username.github.io/minibookdown/).

### Other resources

Still not sure what a repository is, how to fork it or how to update contents?  Have a look at the <a href="https://help.github.com/articles/github-glossary" target="blank">GitHub Glossary</a> for explanations of all of these terms. 