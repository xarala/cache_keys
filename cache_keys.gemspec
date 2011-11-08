# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "cache_keys/version"

Gem::Specification.new do |s|
  s.name        = "cache_keys"
  s.version     = CacheKeys::VERSION
  s.authors     = ["Pathé SENE"]
  s.email       = ["pathe.sene@xarala.sn"]
  s.homepage    = ""
  s.summary     = %q{CACHE KEYS: key provider for active record cache}
  s.description = %q{key provider for active record cache, by xarala}

  s.rubyforge_project = "cache_keys"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # Widows Dependencies
  s.add_development_dependency "win32console"
  s.add_development_dependency "rb-fchange"
  
  s.add_development_dependency "rspec"
  s.add_development_dependency "guard"
  s.add_development_dependency "guard-rspec"
  s.add_development_dependency "sqlite3-ruby"
  s.add_dependency "activerecord", "~> 3.0"
  
end
