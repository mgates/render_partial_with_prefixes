# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'render_partial_with_prefixes/version'

Gem::Specification.new do |spec|
  spec.name          = "render_partial_with_prefixes"
  spec.version       = RenderPartialWithPrefixes::VERSION
  spec.authors       = ["micahgates"]
  spec.email         = ["github@mgates.com"]
  spec.description   = %q{Railtie to add an option to render to specify prefixes.}
  spec.summary       = %q{Railtie to add an option to render to specify prefixes.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
