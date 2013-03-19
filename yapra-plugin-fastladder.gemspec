# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yapra/plugin/fastladder/version'

Gem::Specification.new do |spec|
  spec.name          = "yapra-plugin-fastladder"
  spec.version       = Yapra::Plugin::Fastladder::VERSION
  spec.authors       = ["mzp"]
  spec.email         = ["mzpppp@gmail.com"]
  spec.description   = %q{This is provide Publish::Fastladder for yapra}
  spec.summary       = %q{Yapra plugin for Fastladder publish}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "yapra"
  spec.add_dependency "rest-client"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
