# Development Guide

This section is useful for developers who are interested in customizing the theme.

## Getting Started

### Install

To install all the dependencies listed in the `Gemfile` and `.gemspec` files (runtime_dependency,
development_dependency, dependency), run the following command:

```shell
bundle
# or
bundle install
```

### Run

To preview your theme, run the Jekyll server:

```shell
bundle exec jekyll serve --config _config.yml,_config.development.yml --livereload
# then run clean to remove the generated files
bundle exec jekyll clean
# you can also build
bundle exec jekyll build --config _config.yml,_config.development.yml
```

And then open your browser at [`http://localhost:4000`](http://localhost:4000)

> Check [Serve Command Options](https://jekyllrb.com/docs/configuration/options/#serve-command-options) for more
> arguments.

### Build

When your theme is released, only the files in `_layouts`, `_includes`, `_sass` and `assets` tracked with Git will be
bundled.
To add a custom directory to your theme-gem, please edit the regexp in `jekyll-theme-arsha.gemspec` accordingly.

### Dependencies

All the dependencies that are being used by the theme are bundled
within [the GitHub Pages Ruby gem](https://pages.github.com/versions/).

When you are using the theme through jekyll-remote-theme, you need to add the following to your `Gemfile` in order to
run your site locally:

```ruby
gem 'github-pages', group: :jekyll_plugins # emulates github-pages environment locally
gem "bundler", group: :jekyll_plugins # Gems manager (optional)
gem "rake", group: :jekyll_plugins # build utility (optional)
gem "webrick", '~> 1.7', group: :jekyll_plugins # HTTP server toolkit, fix for ruby >= 3.0
```

> When you publish your site to GitHub Pages, it will not install gems from your `Gemfile` and you will only
> have the gem `github-pages` installed.

## Notes

- Designed to be hosted on [GitHub Pages](https://pages.github.com/).
- Designed to be used with [`jekyll-remote-theme`](https://github.com/benbalter/jekyll-remote-theme).
- Make sure to keep the `github-pages` gem updated.
- All the dependencies used by the theme should be supported by GitHub
  Pages (check [dependency versions](https://pages.github.com/versions/)).
- During gem development, the `Gemfile` is just used for development environment setup.
- In our case, the `.gemspec` file is optional. If you don't have it, you can still use the theme with
  `jekyll-remote-theme`, but we can't publish it to Rubygems. We just using it for development environment setup.
- This package isn't intended to be published to Rubygems.
- If you need to develop against a gem that hasn't yet been released, you can specify it in `Gemfile`.

### Naming Convention

Jekyll use `liquid` as templating engine, we recommend using the following naming convention to get a better developer
experience while using Jetbrains IDEs (they support `liquid` syntax):

- `*.liquid` files (processed as HTML files with Liquid code) or `*.html.liquid`.
- `*.md.liquid` for Markdown files
- `*.css.liquid` for CSS files

> But the problem is that the `.liquid` extension is not omitted by Jekyll during the build process. We suggest you to
> configure your IDE by going to  `File > Settings > Editor > File Types > Liquid template` and adding `*.html` and
> using usual extensions `*.html`, `*.css` and `*.md`.

### `assets/` folder

- The folder will be copied to the `assets` folder of the theme.
- Some files may contain `liquid` tags, for dynamic content.
- We should include the following `Front Matter` header in the top of files that is using `liquid` templating language:
  ```
  ---
  # The empty front matter at the top tells Jekyll it needs to process the file.
  ---
  ```
  This will tell Jekyll to process the file as a `liquid` file.

### `_sass/` folder

The folder contains partial SASS files, we can't use liquid/Front Matter inside this folder.

All partials should be imported in a file inside `assets` to make them usable, for example a main SASS
file `assets/css/sass.scss`:

```yaml
---
---

// loading partials from _sass/
@import 'colors';
@import "styles";
```

### File Encoding

> All markdown and html files should be using `UTF-8` to be processed by Jekyll.

You can convert a file to `UTF-8` by using the following command (on macOS):

```shell
F_NAME='Primer-00.md'; iconv -f iso-8859-1 -t utf-8 $F_NAME > $F_NAME.utf8; rm $F_NAME; mv $F_NAME.utf8 $F_NAME
```

### Permalinks

```shell
permalink: welcome-to-jekyll/ or /welcome-to-jekyll/ # => will generate _site/welcome-to-jekyll/index.html
permalink: /welcome-to-jekyll or welcome-to-jekyll or /welcome-to-jekyll.html or welcome-to-jekyll.html # => will generate _site/welcome-to-jekyll.html
```

> we recommend to always put a `/` in the beginning of your permalinks

## Upgrading the template

Mapping between files (template => theme)

- `assets/js` => `assets/js`
- `assets/img/*` => `assets/img/*`
- `assets/vendor/*` => `assets/vendor/*`
- `assets/css/style.css` => `_sass/styles.scss`, `_sass/colors.scss`, `assets/css/sass.scss`
- `index.html` => `index.html`, `_includes/`
- `portfolio-details.html` => `_layouts/post.html`
- `inner-page.html` => `_layouts/page.html`

### Useful Links

- [Testing your GitHub Pages site locally with Jekyll](https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll/testing-your-github-pages-site-locally-with-jekyll)
- [Jekyll in RubyMine](https://mihajlonesic.gitlab.io/archive/jekyll-in-rubymine/#file-template)
- [Shopify/Liquid](https://shopify.github.io/liquid/)
- [Jekyll's Liquid Filters](https://jekyllrb.com/docs/liquid/filters/)
- [Using Bundler while developing a gem](https://bundler.io/guides/rubygems.html)
- [Jekyll Themes](https://jekyllrb.com/docs/themes/)

## Contributing

Bug reports and pull requests are welcome
on [GitHub@MLH-Fellowship/jekyll-theme-arsha](https://github.com/MLH-Fellowship/jekyll-theme-arsha).
This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to
the [Contributor Covenant](http://contributor-covenant.org) code of conduct.
