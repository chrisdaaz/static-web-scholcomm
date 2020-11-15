---
title: "Developing Custom Static Websites"
weight: 21
notes: "the tutorial will provide students with hands-on experience using the Hugo static site generator for a library-publishing scenario (10). Static site generators are command-line tools that use flat file structures, templates, and data to build websites using modern techniques and standards. Students who complete the tutorial will have enough knowledge to either continue using Hugo or nearly any other open source static site generator because most follow the same patterns and principles (11)."
---

This tutorial will guide you through the process of creating a static website for an academic conference proceedings publication. We'll be using a command line terminal to install and use software as well as a text editor to edit and save plain-text files. 

While we will be using [Hugo](https://gohugo.io/) as our static site generator, this tutorial is not intended to be a cover the depth and breadth of Hugo. For that, I refer you to the Hugo [documentation](https://gohugo.io/documentation/) and [community](https://discourse.gohugo.io/). Rather, this tutorial is about using static site generators in a library-publishing context. We just happen to be using Hugo to illustrate the benefits of static websites. 

{{< toc >}}

## Library Publishing Scenario: Conference Proceedings

There's an academic department that is hosting a conference on campus. You approach them about depositing conference presentation materials in the institutional repository. The conference will feature research papers, posters, and a data visualization contest. The conference organizers are unimpressed by the institutional repository. They want their web presence to more closely match the branding of the sponsoring organization. They also want the works to display in the browser in addition to PDF downloads. 

Institutional repositories can be useful systems for storing and providing long-term public access to documents. They provide obvious benefits to libraries, but faculty and students might struggle to see those benefits. Unfortunately, the complexity of repository systems make them difficult or prohibitively costly to customize for specific collections or content types.

Creating a separate website with website building tool like WordPress or Drupal can be costly to maintain. In addition to requiring someone to manage the website contents, someone else (usually an IT administrator or vendor) needs to set up a server with application software and a database. Overtime, the server will need -- at a minimum -- software patches to secure the database and user credentials.

Static websites can provide custom presentation features for collections stored in a repository. They can be a supplemental publishing layer for a digital repository system without the maintenance overhead of traditional websites. Without a database or cloud-based application software, the security and maintance costs are avoided. 

- Static Websites: Collection-level Presentation Layer
- Digital Repositories: Institutional Storage Layer

Unlike digital repository systems, static websites are much cheaper to host, maintain, and decommission. Compared to digital repository systems, static websites are much easier to build and deploy, thereby reducing the necessary staffing resources. 

### Solution

In this tutorial, we will make a conference proceedings website that links to content stored a repository. Together, the website and the repository will provide stakeholders with a full-features, preservation-ready scholarly web publication. 

Although we will be using [Hugo](https://gohugo.io/) to build our website, our goals can be achieved using [any static site generator](https://jamstack.org/generators/). While other static site generators are feature-focused on blogs, technical documentation, and e-commerse websites, Hugo is a general-purpose website building framework that works on any operating system with few software depenencies. It has a growing user [community](https://discourse.gohugo.io/) and can easily scale to support websites with thousands of pages, which is partly why it's the basis for some [book publishing tools](https://www.getty.edu/publications/digital/platforms-tools.html). 

#### Website Contents

- Conference title and description
- Photos from the conference
- Conference credits and acknowledgements
- Custom website fonts, colors, and branding
- Research papers in HTML format
- Posters displayed in an image viewer
- Data visualizations in image or video formats
- Search engine metadata and Digital Object Identifiers
- DOI links to repository copies

#### Repository Collection Contents

- Conference title and description
- Research papers in PDF format
- Posters in PDF format
- Data visualizations in image or video formats

## The Command Line Interface

Static site generators are programs that are run from a computer terminal. Depending on your system, the default program for your terminal interface might be called `Command Prompt` if you're on Windows or `Terminal` if you're on macOS. There are many terminal programs available and they each give you direct access to files and folders on your system. 

Here's how to open your default computer terminal program:

{{< tabs "terminal" >}}

{{< tab "Windows" >}}

- Click on the `Start` button
- Type `cmd` select the search result for the `Command Prompt` program

This will open your terminal to your `User`'s home directory. Here are three important commands to help you navigate your system:

| Command | Explanation |
| - | - |
| `dir` | **List the contents** of your current directory |
| `mkdir` | **Make a new directory** (or folder) called `new-folder` by running `mkdir new-folder` |
| `cd` | **Change directories** to a target folder by running `cd path\to\new-folder` |

{{< /tab >}}

{{< tab "macOS" >}} 

- Find the `Terminal` program by looking in the `Utilities` folder on your computer

This will open your terminal to your `User`'s home directory. Here are three important commands to help you navigate your system:

| Command | Explanation |
| - | - |
| `ls` | **List the contents** of your current directory |
| `mkdir` | **Make a new directory** (or folder) called `new-folder` by running `mkdir new-folder` |
| `cd` | **Change directories** to a target folder by running `cd path\to\new-folder` |


{{< /tab >}}

{{< tab "Linux" >}}

- Find the `Terminal` program by looking in the `Applications` folder on your computer

This will open your terminal to your `User`'s home directory. Here are three important commands to help you navigate your system:

| Command | Explanation |
| - | - |
| `ls` | **List the contents** of your current directory |
| `mkdir` | **Make a new directory** (or folder) called `new-folder` by running `mkdir new-folder` |
| `cd` | **Change directories** to a target folder by running `cd path\to\new-folder` |


{{< /tab >}}

{{< /tabs >}}

## Installing Hugo

{{< tabs "hugo" >}}

{{< tab "Windows" >}}

Here's a helpful [video on installing Hugo on Windows](https://www.youtube.com/watch?v=G7umPCU-8xc).

### Setting Up Required Software Files and Folders

- Open [Windows Explorer](https://www.wikihow.com/Open-Windows-Explorer)
- Create a new folder at the root of your `C` Drive and call it `Hugo`: `C:\Hugo`
- Create a subfolder in the `Hugo` folder called `bin`: `C:\Hugo\bin`
- Download the latest `.zip` file for the Windows operating system from the [Hugo Releases](https://github.com/gohugoio/hugo/releases) page. It will be a file that looks something like: `hugo_x.xx.x_Windows-xxbit.zip`. Here's how to [check if your running a 32-bit or 64-bit](https://support.microsoft.com/en-us/windows/which-version-of-windows-operating-system-am-i-running-628bec99-476a-2c13-5296-9dd081cdd808) version of Windows.
- Extract all of the contents of the `.zip` folder to the `C:\Hugo\bin` folder you already created.
- Rename the `.exe` file to `hugo.exe` in the `C:\Hugo\bin` folder.

### Making `hugo` available as a command in your terminal

- Click on the `Start` button.
- Type `Environment Variables` and select the search result for `Edit the system Environment Variables` from the Control panel
- Click on the `Environment Variables` button
- In the `User` variables section, find the row that starts with PATH (PATH will be all caps).
- Double-click on `PATH`.
- Click the `New` button.
- Type in the folder path in which the `hugo.exe` was saved: `C:\Hugo\bin`. The `PATH` entry should be the _folder_ where Hugo lives. Press Enter when you’re done typing.
- Click `OK` at every window to exit.

### Verify the installation

- Open the `Command Prompt`
- Type in  `hugo version` and press `Enter`
    - If the installation is successful, the output will display the version of Hugo you've installed.
    - If this doen't happen, then verify that the folder location of the `hugo.exe` file has been added to your `PATH` Environmental Variables in your Advanced System Settings (see: above).


{{< /tab >}}

{{< tab "macOS" >}}

Here's a helpful [video on installing Hugo on macOS](https://www.youtube.com/watch?v=WvhCGlLcrF8):

The easiest way to install Hugo on macOS (and lots of other open source software) is using the Homebrew package manager. Homebrew will download, install, update, and remove software packages with a few simple commands. 

### Install Homebrew

The most up-to-date instructions will be available on the [website](https://brew.sh/), but here are the steps:

- Open a Terminal
- Copy this code and paste it into the terminal:

```
xcode-select --install
```

- This will install [Apple developer tools](https://developer.apple.com/downloads). Once that's done, copy and past this code into the terminal:

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

- This will install and set up Homebrew on your machine. 

### Install Hugo

- Now that you have Homebrew, you can install Hugo by running this code in your Terminal: `brew install hugo`

### Verify Installation

- After installing Hugo, run this code in your terminal: `hugo version`

- If the installation is successful, the output will display the version of Hugo you've installed.

{{< /tab >}}

{{< tab "Linux" >}}

The easiest way to install Hugo on Linux (and lots of other open source software) is using the [Homebrew]((https://brew.sh/)) package manager. There's good change that hugo is available in your distributions default package manager, but Homebrew tends to have the most recent Hugo releases. Homebrew will download, install, update, and remove software packages with a few simple commands. 

### Install Homebrew

The most up-to-date instructions will be available on the [website](https://brew.sh/), but here are the steps:

- Open a Terminal
- Copy this code and paste it into the terminal:

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

- This will install and set up Homebrew on your machine. 

### Install Hugo

- Now that you have Homebrew, you can install Hugo by running this code in your Terminal: `brew install hugo`

### Verify Installation

- After installing Hugo, run this code in your terminal: `hugo version`

- If the installation is successful, the output will display the version of Hugo you've installed.

{{< /tab >}}

{{< /tabs >}}

## Files and Folders

Static sites are simply files and folders. The files and folders we use to _build_ the website are diffent than the files and folders we use to _publish_ the website. Static site generators are the tools we use to handle the _tranformation_ between the two sets of files and folders. 

Here's a comparison between the files and folders for a basic hugo project, before and after transformation:

### Working Directory: Hugo Project Files


```
conference-proceedings/
├── config.yml
├── content
│   ├── papers
│   │   ├── 1001.md
│   │   └── 1002.md
│   ├── posters
│   │   ├── 2001.md
│   │   └── 2002.md
│   ├── visualizations
│   │   ├── 3001.md
│   │   └── 3002.md
│   └── _index.md
└── static
    ├── styles.css
    ├── main.js
    └── images
        ├── 1001.jpg
        ├── 1002.jpg
        ├── 2001.png
        ├── 2002.png
        ├── 3001.gif
        └── 3002.gif
└── layouts
    ├── baseof.html
    ├── paper.html
    ├── poster.html
    ├── visualization.html
    ├── home.html
    └── partials
        ├── footer.html
        ├── header.html
        └── head.html

6 directories, 23 files
```
### Public Directory: Website Files

```
public/
├── 404.html
├── papers
│   ├── 1001.html
│   └── 1002.html
├── posters
│   ├── 2001.html
│   └── 2002.html
├── visualizations
│   ├── 3001.html
│   └── 3002.html
├── images
    ├── 1001.jpg
    ├── 1002.jpg
    ├── 2001.png
    ├── 2002.png
    ├── 3001.gif
    └── 3002.gif
├── styles.css
├── main.js
├── index.html
└── sitemap.xml

4 directories, 17 files
```

We use the working directory to store and edit our project files. Once we're finished, we run the `hugo` command from our terminal. This creates a new directory called `public` containing our website files. These are the files we copy over to a web host to make our website available online. 

## Plain Text

### Plain Text vs Rich Text 

There are two main types of documents we use to write and edit text: plain-text and rich text. Plain text exposes the raw characters within a document, whereas rich text displays the characters according to formatting rules and styles. 

|            | Examples               | Editors |
| ---------- | ---------------------- | ------- |  
| Plain text | `.xml`, `.html`, `.md` | Notepad, TextEdit, VS Code |
| Rich text  | `.docx`, `.rtf`, `.odt`| Microsoft Word, Scrivener |

Tenen and Wythoff ([2014](https://doi.org/10.46430/phen0041)) explain the benefits of plain text for the sustainability of documents: 

> Plain text both ensures transparency and answers the standards of long-term preservation. MS Word may go the way of [Word Perfect](https://en.wikipedia.org/wiki/WordPerfect) in the future, but plain text will always remain easy to read, catalog, mine, and transform. Furthermore, plain text enables easy and powerful versioning of the document, which is useful in collaboration and organizing drafts. Your plain text files will be accessible on cell phones, tablets, or, perhaps, on a low-powered terminal in some remote library. Plain text is backwards compatible and future-proof. Whatever software or hardware comes along next, it will be able to understand your plain text files.

Coming to a plain text editor from a word processing program (like Microsoft Word), might feel like writing computer code rather than text for humans. That is because there is little material difference between plain text and code. Plain text is the format software developers use to write code. The only differences between code and text is the content and file extension. Plain text editors are not exclusive to writing code or reading data; you can write fiction in plain text ([some have](https://ianhocking.com/twl/2013/06/22/writing-a-novel-using-markdown/)). 

### Plain Text and Static Site Generators

Static site generators use plain text in order to separate content from styles. Static site generators use [Markdown](https://en.wikipedia.org/wiki/Markdown) as the plain text format for content, such as headings, paragraphs, links, lists, and references, and [YAML](https://en.wikipedia.org/wiki/YAML) for metadata, such as title, author, abstract, date. 

Markdown uses a syntax that prioritizes human readability without sacrificing semantic structure. There are numerous tools available that will convert markdown to other formats, such as `.html`, `.docx`, `.pdf`, `.tex`, `.epub`, `.jats`, `.tei`, etc. The most popular markdown conversion tool is [Pandoc](https://pandoc.org/). Static site generators all have markdown processors to generate `.html`. There are many markdown [tutorials](https://www.markdowntutorial.com/) and [guides](https://www.markdownguide.org/) available online. 

Here's a side-by-side comparison between markdown and the HTML that static site generators render:

{{< columns >}}

```
# Title

This is a paragraph. Paragraphs need to be separated by empty lines. 

This is a second paragraph. 

## Section Heading

Here is a paragraph with a [link](https://example.com).

Now here's a list:

- List item
- Another list item
```

<--->

# Title

This is a paragraph. Paragraphs need to be separated by empty lines. 

This is a second paragraph. 

## Section Heading

Here is a paragraph with a [link](https://example.com) and a footnote[^1].

Now here's a list:

- List item
- Another list item

[^1]: Footnote text.

{{< /columns >}}

Document metadata is embedded within markdown documents with YAML front-matter. The YAML metadata block always appears at the top of the file preceeded and followed by three hyphens `---`. YAML is a plain text syntax for representing data as [key-value pairs](https://en.wikipedia.org/wiki/Attribute%E2%80%93value_pair). MARC, DublinCore, and RDF are library examples of key-value pairs for bibiliographic metadata. 

YAML front-matter example for [an article](https://journal.code4lib.org/articles/13861):

```
---
title: Using Static Site Generators for Scholarly Publications and Open Educational Resources
author: Chris Diaz
date: 2018-11-08
journal: Code4lib Journal
issue: 42
abstract: Libraries that publish scholarly journals, conference proceedings, or open educational resources can use static site generators in their digital publishing workflows. Northwestern University Libraries is using Jekyll and Bookdown, two open source static site generators, for its digital publishing service. This article discusses motivations for experimenting with static site generators and walks through the process for using these technologies for two publications.
---
```

### Plain Text Editors

There are [a lot of text editors](https://en.wikipedia.org/wiki/List_of_text_editors) we can use to build static websites. Every operating system includes a default plain text editor. 

[Notepad](https://en.wikipedia.org/wiki/Microsoft_Notepad) is the default text editor on Windows machines; [TextEdit](https://en.wikipedia.org/wiki/TextEdit) is the default text editor on macOS. Either can be used to write and edit markdown and YAML. 

Selecting a text editor is a matter of personal preference. Most modern text editors can be customized with plugins, themes, and extensions to streamline the workflow and comfort of writing plain text. Syntax highlighting and validation are especially helpful. I recommend [Microsoft's Visual Studio Code](https://code.visualstudio.com/) for beginners. It's free and open source with [good documentation](https://code.visualstudio.com/docs/introvideos/basics) and a lot of helpful [extensions](https://marketplace.visualstudio.com/vscode) for writing markdown and using static site generators.  

## Create a Hugo Site

We're going to create our first Hugo project to build a website. 

### Creating Hugo Project Files

- Open a terminal
- Create a directory for Hugo website projects: `mkdir hugo-sites`
- Change directories into that new directory: `cd hugo-sites`

### Configuration

### Contents

### Templates

## Publishing Static Websites to the Web

## Archiving Static Websites