# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ogler/version"

Gem::Specification.new do |s|
  s.name        = "ogler"
  s.version     = Ogler::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Kevin Bringard"]
  s.email       = ["kevinbringard@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Uploader for glance using ogle}
  s.description = %q{Uploader for glance which uses the ogle library to be completely standalone}

  s.rubyforge_project = "ogler"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "ogle"

end
