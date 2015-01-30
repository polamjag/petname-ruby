# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'petname/version'

Gem::Specification.new do |spec|
  spec.name          = "petname"
  spec.version       = Petname::VERSION
  spec.authors       = ["polamjag"]
  spec.email         = ["s@polamjag.info"]
  spec.summary       = %q{Generates random words consisting of a random combination of an adverb, adjective, and proper name}
  spec.description   = %q{Generates random words consisting of a random combination of an adverb, adjective, and proper name. Ported from https://github.com/dustinkirkland/petname}
  spec.homepage      = "https://github.com/polamjag/petname-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
end
