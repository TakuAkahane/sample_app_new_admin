$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "renopertyadmin/version"

# TODO: homepageのURLを変更する
# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "renopertyadmin"
  spec.version     = Renopertyadmin::VERSION
  spec.authors     = [""]
  spec.email       = [""]
  spec.license     = "MIT"
  spec.homepage    = "https://www.yahoo.co.jp/"
  spec.summary     = "Renoperty administrator console"
  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  spec.add_dependency "rails", "~> 5.2.2", ">= 5.2.2.1"
  spec.add_dependency "slim-rails"
  spec.add_dependency "rspec-rails"
end
