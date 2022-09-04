# Theme's documentation

[Arsha template](https://bootstrapmade.com/arsha-free-bootstrap-html-template-corporate/) refactored as a Jekyll theme.

[**🔗 Preview 🔗**](https://mlh-fellowship.github.io/jekyll-theme-arsha/)

![Screenshot](./assets/img/Arsha-bootstrap-website-template.png)

## Installation

### GitHub Pages

The theme is designed to be used with GitHub Pages
through [jekyll-remote-theme](https://github.com/benbalter/jekyll-remote-theme)

Just add this line to your Jekyll site's `_config.yml`:

```yaml
remote_theme: MLH-Fellowship/jekyll-theme-arsha
```

### Other environments

> Since the theme has not been published yet to RubyGems.org, the instructions in this section will not work.

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "jekyll-theme-arsha"
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: jekyll-theme-arsha
```

And then install the theme's Gem using: ```bundle``` or ```gem install jekyll-theme-arsha```

## Usage

This section describes how you can use this theme to build a site for your business with a portfolio.

### Available Layouts

The theme includes the following layouts:

- `default`: contains default CSS, JS, FavIcon, Header and Footer.
- `home`:  same as default.
- `page`: same as default + breadcrumbs + Disqus(if configured). You can use it to add more pages (
  example: [About Page](./about.md) )
- `post`: same as page. You can use it to add projects to your company portfolio. (Examples: [Posts](./_posts))

### custom Landing Page

Create an `index.html` inside your project and copy code from [the default index](./index.html), then customize it.

### custom Header, Footer and other includes

To override any include, create the corresponding file in your project, copy code from the theme, then customize it.

For example if we want to customize the header, we create an `_includes/header.html` file, we copy default code
from [the default header](./_includes/header.html), then we edit it.

### Logo

We can use an image logo by adding this line to `_config.yml`:

```yaml
logo: assets/img/logo.png # path relative to the project
```

> By default, we use the value of `name` from `_config.yml` as logo.

### Customize the HTML head

#### Favicon

You can add a custom favicon by overriding [`_includes/site-extras-head.html`](_includes/site-extras-head.html).

### Styling & custom CSS/SASS

#### Colors

You can change colors by adding `_sass/override-colors.scss` to your project (You can find SASS variable names
at [`_sass/colors.scss`](_sass/colors.scss)).

#### SASS

You can add extra styles by adding `_sass/extras-styles.scss` to your project.

#### append tags to the existing HTML head

You can append tags to your head on many levels:

- site: to all pages in your website.
    - Override [`_includes/site-extras-head.html`](_includes/site-extras-head.html).
- layout: only pages using a specific layout.
    - add a Front-Matter header `extras-head: _includes/[FILE_NAME].html` and create the
      file `_includes/[FILE_NAME].html` containing the tags.
- page: to a specific page.
    - add a Front-Matter header `extras-head: _includes/[FILE_NAME].html` and create the
      file `_includes/[FILE_NAME].html` containing the tags.

### Adding custom JavaScript code

You can add JS code on many levels:

- site: all pages in your website.
    - Override [`_includes/site-extras-js.html`](_includes/site-extras-js.html).
- layout: only pages using a specific layout.
    - add a Front-Matter header `extras-js: _includes/[FILE_NAME].html` and create the file `_includes/[FILE_NAME].html`
      containing your JS tags.
- page: to a specific page.
    - add a Front-Matter header `extras-js: _includes/[FILE_NAME].html` and create the file `_includes/[FILE_NAME].html`
      containing your JS tags.

> the JS tags can be an inline code `<script type="text/javascript">YOUR CODE</script>`
> or `<script defer src="ASSET_PATH or URL"></script>`

### Add-ons

#### Disqus

You can add a Disqus comments section to `post.html` and `page.html` layouts, by add this line to `_config.yml`:

```yaml
disqus:
  shortname: X
```

> You can disable comments in a specific page by adding `comments: false` to your Front-Matter header

#### Google Analytics

To use Google Analytics add this line to `_config.yml`:

```yaml
google_analytics: YOUR_GOOGLE_ANALYTICS_ID
```

#### Social Links

You can add social links to your footer by adding the following content to your `_config.yml`:

```yaml
social_links:
  github: YOUR_REPOSITORY_URL
  discord: YOUR_INVITATION_URL
  twitter: YOUR_TWITTER_URL
# ... facebook, instagram, youtube, ...
```

