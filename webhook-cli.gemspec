# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'webhook/cli/version'

Gem::Specification.new do |spec|
  spec.name          = "webhook-cli"
  spec.version       = Webhook::CLI::VERSION
  spec.authors       = ["CHIKURA Shinsaku"]
  spec.email         = ["shinsaku@chikura.me"]
  spec.description   = %q{WebHook post entry using command line}
  spec.summary       = %q{WebHook command line interface}
  spec.homepage      = "https://github.com/chsh/webhook-cli"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "faraday"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
