$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "gpig/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "gpig"
  s.version     = Gpig::VERSION
  s.authors     = ["William Barry"]
  s.email       = ["william@nine.is"]
  s.homepage    = "http://github.com/williambarry007/gpig"
  s.summary     = "A gem development tool."
  s.description = "A tool to quickly add files to a git repo, push, and then use specific_install to install the new gem."

  s.files = Dir["{bin,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.executables = ["gpig"]
  
  s.add_dependency "specific_install"
  
end
