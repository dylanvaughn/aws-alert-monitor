# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'aws-alert-monitor/version'

Gem::Specification.new do |gem|
  gem.name          = "aws-alert-monitor"
  gem.version       = AwsAlertMonitor::VERSION
  gem.authors       = ["Brett Weaver"]
  gem.email         = ["brett@weav.net"]
  gem.description   = %q{I watch an SQS queue and escalate alert messages.}
  gem.summary       = %q{I watch an SQS queue and escalate alert messages.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency 'fog', '~> 1.6.0'
end