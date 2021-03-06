# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ovaltine/version'

Gem::Specification.new do |spec|
  spec.name          = "ovaltine"
  spec.version       = Ovaltine::VERSION
  spec.authors       = ["John DeSilva"]
  spec.email         = ["desilvjo@umich.edu"]

  spec.summary       = %q{simple cryptography utilities in ruby}
  spec.description   = %q{simple cryptography utilities in ruby}
  spec.homepage      = "https://github.com/Aesthetikx/ovaltine"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec"
end
