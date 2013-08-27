# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'barometer/cli/version'

Gem::Specification.new do |spec|
  spec.name          = 'barometer-cli'
  spec.version       = Barometer::Cli::VERSION
  spec.authors       = ['Mark G']
  spec.email         = ['barometer@attackcorp.com']
  spec.description   = %q{Weather via the command line.}
  spec.summary       = %q{Weather via the command line.}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^spec/})
  spec.require_paths = ['lib']

  spec.add_dependency 'barometer'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end
