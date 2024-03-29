$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "bootstrap_plus/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "bootstrap_plus"
  spec.version     = BootstrapPlus::VERSION
  spec.authors     = ["Ravi Singh"]
  spec.email       = ["ravionrails@gmail.com"]
  spec.homepage    = "https://github.com/RaviSys/bootstrap_plus"
  spec.summary     = "Summary of BootstrapPlus."
  spec.description = "Description of BootstrapPlus."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 5.2.4"

  spec.add_development_dependency "sqlite3"
end
