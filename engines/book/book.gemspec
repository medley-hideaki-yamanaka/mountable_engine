require_relative "lib/book/version"

Gem::Specification.new do |spec|
  spec.name        = "book"
  spec.version     = Book::VERSION
  spec.authors     = [""]
  spec.email       = [""]
  spec.homepage    = "https://github.com/medley-hideaki-yamanaka"
  spec.summary     = "Summary of Book."
  spec.description = "Description of Book."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/medley-hideaki-yamanaka"
  spec.metadata["changelog_uri"] = "https://github.com/medley-hideaki-yamanaka"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.1.7", ">= 6.1.7.6"
end
