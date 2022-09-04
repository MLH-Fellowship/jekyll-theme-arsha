# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-arsha"
  spec.version       = "0.2.0"

  spec.authors       = ["Mehdi Nassim KHODJA"]
  spec.email         = ["18899702+naskio@users.noreply.github.com"]

  spec.summary       = "Arsha template published as a Jekyll-Theme upgraded to latest version v4.8.0 with Bootstrap 5.2.0"
  spec.metadata["plugin_type"] = "theme"
  spec.platform      = Gem::Platform::RUBY
  spec.homepage      = "https://github.com/MLH-Fellowship/jekyll-theme-arsha"

  spec.license       = "Nonstandard"
  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README.md|USAGE.md|DEVELOPMENT.md|_config\.yml)!i) }

  spec.required_ruby_version = ">= 2.5.0"

  spec.add_runtime_dependency "jekyll", "~> 3.9.2" # static site generator
  spec.add_development_dependency "bundler" # Gems manager
  spec.add_development_dependency "rake" # build utility
  spec.add_development_dependency "webrick", '~> 1.7' # HTTP server toolkit, fix for ruby >= 3.0
  spec.add_development_dependency 'github-pages' # emulates github-pages environment
end
