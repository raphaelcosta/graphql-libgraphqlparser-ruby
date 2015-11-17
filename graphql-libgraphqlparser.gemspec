lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'graphql/libgraphqlparser/version'

Gem::Specification.new do |spec|
  spec.name          = 'graphql-libgraphqlparser'
  spec.version       = GraphQL::Libgraphqlparser::VERSION
  spec.authors       = ['Robert Mosolgo']
  spec.homepage      = 'https://github.com/rmosolgo/graphql-libgraphqlparser-ruby'
  spec.email         = ['rdmosolgo@gmail.com']
  spec.summary       = "Use Libgraphqlparser to parse queries in the GraphQL gem"
  spec.license       = "minitest"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'graphql', '~> 0.10.0'
  spec.add_runtime_dependency 'libgraphqlparser', '~> 0.0.2'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency "guard", "~> 2.12"
  spec.add_development_dependency "guard-bundler", "~> 2.1"
  spec.add_development_dependency "guard-minitest", "~> 2.4"
  spec.add_development_dependency 'minitest', '~> 5.8'
  spec.add_development_dependency 'rake', '~> 10.0'
end