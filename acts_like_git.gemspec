
# -*- encoding: utf-8 -*-
$:.push('lib')
require "acts_like_git/version"

Gem::Specification.new do |s|
  s.name     = "acts_like_git"
  s.version  = ActsLikeGit::VERSION.dup
  s.date     = "2013-01-03"
  s.summary  = "Provides git-like versioning, hashing, and rollback for ActiveRecord objects"
  s.email    = "johncallahan@github.com"
  s.homepage = "https://github.com/johncallahan/acts_like_git"
  s.authors  = ['johncallahan']
  
  s.description = <<-EOF
Provides git-like versioning, hashing, and rollback for ActiveRecord objects 
EOF
  
  dependencies = [
    # Examples:
    # [:runtime,     "rack",  "~> 1.1"],
    # [:development, "rspec", "~> 2.1"],
  ]
  
  s.files         = Dir['**/*']
  s.test_files    = Dir['test/**/*'] + Dir['spec/**/*']
  s.executables   = Dir['bin/*'].map { |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  
  ## Make sure you can build the gem on older versions of RubyGems too:
  s.rubygems_version = "1.8.6"
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.specification_version = 3 if s.respond_to? :specification_version
  
  dependencies.each do |type, name, version|
    if s.respond_to?("add_#{type}_dependency")
      s.send("add_#{type}_dependency", name, version)
    else
      s.add_dependency(name, version)
    end
  end
end
