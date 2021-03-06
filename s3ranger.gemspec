# -*- mode: ruby; coding: utf-8; -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 's3ranger/version'

Gem::Specification.new do |spec|
  spec.name          = "s3ranger"
  spec.version       = S3Ranger::VERSION
  spec.authors       = ["Lincoln de Sousa"]
  spec.email         = ["lincoln@comum.org"]
  spec.description   = 'Tool belt for managing your S3 buckets'
  spec.summary       = 's3ranger is a library that aggregates a good range of features for managing your Amazon S3 buckets. It also provides basic interactive client'

  spec.homepage      = "http://github.com/clarete/s3ranger"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  # Library requirements
  spec.add_dependency "aws-sdk"

  # Development requirements
  spec.add_development_dependency "debugger"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
