$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "contacts/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "contacts"
  s.version     = Contacts::VERSION
  s.authors     = ["Okwufulueze"]
  s.email       = ["daniel@dealdey.com"]
  s.homepage    = "http://dealdey.com"
  s.summary     = "Research Gem Creation using Contacts"
  s.description = "An application that stores contacts information"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.5.1"

  s.add_development_dependency "mysql2"
end
