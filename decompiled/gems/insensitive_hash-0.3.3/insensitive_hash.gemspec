# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "insensitive_hash/version"

Gem::Specification.new do |s|
  s.name        = "insensitive_hash"
  s.version     = InsensitiveHash::VERSION
  s.authors     = ["Junegunn Choi"]
  s.email       = ["junegunn.c@gmail.com"]
  s.homepage    = "https://github.com/junegunn/insensitive_hash"
  s.summary     = %q{Case-insensitive Ruby Hash}

  s.description = %q{Hash with case-insensitive, Symbol/String-indifferent key access}

  s.rubyforge_project = "insensitive_hash"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "test-unit", ">= 2.3.0"
end
