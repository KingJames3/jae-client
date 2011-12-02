# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "cloudfoundry/version"

Gem::Specification.new do |s|
  s.name = "cloudfoundry-client"
  s.version = CloudFoundry::Client::VERSION
  s.platform = Gem::Platform::RUBY
  s.authors = ["Ferran Rodenas"]
  s.email = ["frodenas@gmail.com"]
  s.homepage = "http://github.com/frodenas/cloudfoundry-client"
  s.summary = %q{A Ruby wrapper for the CloudFoundry API PaaS}
  s.description = %q{This is a Ruby wrapper for the CloudFoundry API, the industry’s first open Platform as a Service (PaaS) offering.}
  s.licenses = ["MIT"]

  s.add_development_dependency("rspec", ">= 2.7.0")
  s.add_development_dependency("webmock", ">= 1.7.8")
  s.add_development_dependency("vcr", ">= 2.0.0.beta2")

  s.add_runtime_dependency("faraday", ">= 0.7.5")
  s.add_runtime_dependency("json_pure", ">= 1.6.2")

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- spec/*`.split("\n")
  s.require_paths = ["lib"]

  s.rdoc_options     = ["--charset=UTF-8"]
  s.extra_rdoc_files = ["CHANGELOG.md", "LICENSE", "README.md"]
end