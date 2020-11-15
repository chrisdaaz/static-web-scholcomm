---
title: "GitHub for Static Web Publishing"
weight: 20
notes: "the tutorial will provide students with hands-on experience using the Hugo static site generator for a library-publishing scenario (10). Static site generators are command-line tools that use flat file structures, templates, and data to build websites using modern techniques and standards. Students who complete the tutorial will have enough knowledge to either continue using Hugo or nearly any other open source static site generator because most follow the same patterns and principles (11)."
---

This tutorial will step you through the process of creating a static website with [Hugo](https://gohugo.io/) for an academic conference proceedings publication. We'll be using a command line terminal to install software and run commands and a text editor to edit and save plain-text files. 

{{< toc >}}

## Use Case: OER Textbook

### Library Publishing Scenario

You're going to be building your textbook in GitHub. GitHub is web-based repository hosting service, which allows you to manage your code, and see revisions you've made via a good-looking, easy-to-use web interface. It's a great collaboration tool, which is why we're using it for open textbooks. You may need to create a GitHub account if you don't already have one.

### Copy this starter kit

The first step is to make a copy of the open textbook starter kit to your Github account. Github refers to this process as creating a "fork" of a code repository. Go ahead and copy the repository below.

<a class="btn btn-primary" href="https://github.com/nulib-oer/minibookdown/fork" target="_blank"><i class="fa fa-code-fork"></i> Copy the starter kit</a>

This copy is where you will be writing and editing your textbook. 

<div id="ghUsername-intro">
If you tell us your username, we can prepare some links and make things a bit easier for you. If for some reason it doesn't work, replace 'your-github-username' with your GitHub username where you see links containing 'your-github-username'
</div>

[your-github-username](https://github.com/your-github-username-set/minibookdown/)


### Some setup

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

### Lets have a look at your textbook!

You can view it by going to [https://your-github-username.github.io/minibookdown/](https://your-github-username.github.io/minibookdown/).

### Other resources

Still not sure what a repository is, how to fork it or how to update contents?  Have a look at the <a href="https://help.github.com/articles/github-glossary" target="blank">GitHub Glossary</a> for explanations of all of these terms. 