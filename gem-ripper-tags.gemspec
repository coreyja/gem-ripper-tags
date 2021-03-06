# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "gem-ripper-tags"
  s.version     = `git describe --abbrev=0 --tags`
  s.authors     = ["Tim Pope", "Lukas Zapletal"]
  s.email       = ["code@tpop"+'e.net', "lzap+rpm@red"+'hat.com']
  s.homepage    = "https://github.com/lzap/gem-ripper-tags"
  s.summary     = %q{fast and accurate ctags generator on gem install}
  s.license     = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'ripper-tags', '>= 0.1.2'
  s.add_development_dependency 'rake'
end
