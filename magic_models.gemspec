lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'magic_models/version'

Gem::Specification.new do |spec|
  spec.name          = 'magic_models'
  spec.version       = MagicModels::VERSION
  spec.authors       = ['Ray Zane']
  spec.email         = ['ray@promptworks.com']

  spec.summary       = 'Generate models at runtime from a database connection!'
  spec.homepage      = 'https://github.com/rzane/magic_models'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'activerecord'

  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
