# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "JRank/version"

Gem::Specification.new do |s|
  s.name        = "JRank"
  s.version     = Jrank::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Paul Ketelle & Dave Almond"]
  s.email       = ["paul@ketelle.com"]
  s.homepage    = ""
  s.summary     = %q{JRank search gem for rails}
  s.description = %q{Adds easy to use JRank search to any website}

  s.rubyforge_project = "JRank"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
