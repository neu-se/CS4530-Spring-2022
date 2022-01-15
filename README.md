# CS4530, Spring 2022: Fundamentals of Software Engineering
This repository contains the source for the website for Northeastern's CS4530, Spring 2022 class. If you are looking to browse the site, you should visit it directly, at [https://neu-se.github.io/CS4530-Spring-2022/](https://neu-se.github.io/CS4530-Spring-2022/). If you are looking to edit the site, then you have come to the right place!

### Websites for prior versions of this class:
* [Fall 2020](https://pages.github.ccs.neu.edu/CS5500-CourseMaterials/CS4530-CS5500-Fall2020/)
* [Spring 2021](https://neu-se.github.io/CS4530-CS5500-Spring-2021/) (see also [public website repo](https://github.com/neu-se/CS4530-CS5500-Spring-2021/))
* [Fall 2021](https://pages.github.ccs.neu.edu/CS4530-Fall2021/CourseWebSite/)

### License
All materials in this repository (the lectures, assignments, and also the site itself) are released under the [Creative Commons Attribution-ShareAlike 4.0 License](https://creativecommons.org/licenses/by-sa/4.0/). Please feel free to reuse or remix these materials in your class. If you do, we'd love to hear your thoughts.

### About this site
This website is built using [Jekyll](https://jekyllrb.com), a lighweight static website generator that takes Markdown files as input and outputs a nicely structured website according to some template. This site uses [Kevin Lin's Just the Class](https://kevinl.info/just-the-class/) Jekyll template, which in turn is built on the [Just the Docs](https://pmarsceill.github.io/just-the-docs/) template.

### Local development environment

The local development environment for [Jekyll](https://jekyllrb.com) will allow you to run a live-updating local server that lets you preview what the website will look like when it is deployed. As you make changes to the website (in the markdown files), the development server will automatically update the site that it is serving. View the [Jekyll quick start guide](https://jekyllrb.com/docs/) for more information.

1. Follow the GitHub documentation for [Setting up your GitHub Pages site locally with Jekyll](https://help.github.com/en/articles/setting-up-your-github-pages-site-locally-with-jekyll).

1. Install a local Jekyll server if you do not already have one.  To do this, say
```bash
$ gem install bundler jekyll
$ bundle install
```
1. Start your local Jekyll server.
```bash
$ bundle exec jekyll serve
```
1. Point your web browser to [http://localhost:4000](http://localhost:4000)
1. Reload your web browser after making a change to preview its effect.

### Canvas Sync
The GitHub Actions build system for this site is configured to automatically push content into Canvas when changes are pushed to the main branch of this repository. Specifically, it will push the assignments, lectures, and the home page material into Canvas, overwriting any changes made to those assignments, modules, or home page content in Canvas.

The Canvas sync plugin benefits from some metadata on assignments (e.g. due date) and lectures (e.g. list of lessons and curricular materials). Hence, the assignments and lectures in this site include a few extra front-matter definitions at the top of each page.

To use this plugin on a new repository, configure the GitHub secrets `CANVAS_BASE_URL`, `CANVAS_COURSE_ID` and `CANVAS_TOKEN`. Given that the plugin is embeded directly in the project (and not in a separate gem), it's also necessary to set the environmental variable `JEKYLL_NO_BUNDLER_REQUIRE` to true. Ideally, after this course offering is complete, the plugin should be extracted to its own module for better reusability. Note that GitHub Pages limits which plugins can be built using the standard GitHub Pages builder, and hence, the canvas sync plugin won't work if built using GitHub Pages. However, GitHub *Actions* will build whatever you want, including Jekyll sites with custom plugins. See the GitHub Actions configuration in this repo.

### Automatic website previews
This repository is also built by [Netlify](https://www.netlify.com). We do not use Netlify to host the production site, but use it for development. Each commit to this repository (to any branch) is automatically deployed to a publicly-accessible web address, allowing for an easy preview/review of what the site will look like given some change. The easiest way to use this workflow is to create a pull request: Netlify will add a status message on the pull request with a link to the current deploy preview of the site as it is in that pull request. As you push more commits to the pull request, Netlify will continue to update the site. Alternatively, you can log into the [Netlify control panel using GitHub sign-in](https://app.netlify.com/sites/objective-mclean-ad778c/overview) and view the complete deployment history, with direct links to all deploy previews (not just for pull requests).
