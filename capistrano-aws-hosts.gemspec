
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "capistrano/aws/hosts/version"

Gem::Specification.new do |spec|
  spec.name          = "capistrano-aws-hosts"
  spec.version       = Capistrano::Aws::Hosts::VERSION
  spec.authors       = ["Matthew Savage"]
  spec.email         = ["matt@amasses.net"]

  spec.summary       = %q{Provide access to AWS EC2 inventory for deploy host targets}
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'capistrano', '>= 3.0'
  spec.add_dependency 'aws-sdk-ec2', '~> 1'

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
