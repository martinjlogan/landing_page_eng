$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "landing_page_eng/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "landing_page_eng"
  s.version     = LandingPageEng::VERSION
  s.authors     = ["Martin J. Logan"]
  s.email       = ["martinjlogan@erlware.org"]
  s.homepage    = "http://erlware.org"
  s.summary     = "Summary of LandingPageEng."
  s.description = "Description of LandingPageEng."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.5"
  # s.add_dependency "jquery-rails"
  s.add_dependency "rmagick"
  s.add_dependency "carrierwave"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "debugger"
end
