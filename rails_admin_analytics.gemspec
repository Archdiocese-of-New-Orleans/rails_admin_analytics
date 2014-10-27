$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_admin_analytics/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_admin_analytics"
  s.version     = RailsAdminAnalytics::VERSION
  s.authors     = ["David John"]
  s.email       = ["djohn@arch-no.org"]
  s.homepage    = "http://it.arch-no.org"
  s.summary     = "A Google analytics dashboard for Rails Admin"
  s.description = "Uses your prebuilt SuperProxy query with your Google Analytics account to embed charts into your rails_admin dashboard."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.1.0"
end
