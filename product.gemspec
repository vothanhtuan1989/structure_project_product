require_relative "lib/product/version"

Gem::Specification.new do |spec|
  spec.name        = "product"
  spec.version     = Product::VERSION
  spec.authors     = [""]
  spec.email       = [""]
  spec.homepage    = "https://test-product.test"
  spec.summary     = "https://test-product.test"
  spec.description = "https://test-product.test"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "https://test-product.test"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://test-product.test"
  spec.metadata["changelog_uri"] = "https://test-product.test"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.0.6"
  spec.add_dependency "simple_command", "1.0.1"
  spec.add_development_dependency "rspec-rails", "~> 5.0"
  spec.add_development_dependency "factory_bot_rails"
  spec.add_development_dependency "pundit"
end
