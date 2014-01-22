# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rolling_paper/version'

Gem::Specification.new do |spec|
  spec.name          = "rolling_paper"
  spec.version       = RollingPaper::VERSION
  spec.authors       = ["BryanaKnight", "fluxusfrequency", "benhorne44", "dpequeen"]
  spec.email         = ["brknig11@gmail.com", "benmlewis@gmail.com", "benhorne44@gmail.com", "pequickster@gmail.com"]
  spec.description   = "Consume leafly API"
  spec.summary       = "Gather strain information"
  spec.homepage      = "https://github.com/BryanaKnight/rolling_paper"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "webmock"
  spec.add_runtime_dependency "faraday"
  spec.add_runtime_dependency "json"
  spec.add_development_dependency "rspec"


end
