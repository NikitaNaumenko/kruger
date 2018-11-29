lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kruger/version'

Gem::Specification.new do |spec|
  spec.name          = 'kruger'
  spec.version       = Kruger::VERSION
  spec.authors       = ['Naumenko Nikita']
  spec.email         = ['naumenkoniki@gmail.com']

  spec.summary       = 'Moi krug api integration'
  spec.description   = 'Moi krug api integration'
  spec.homepage      = 'https://github.com/NikitaNaumenko/kruger'
  spec.license       = 'MIT'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'httparty'
  spec.add_development_dependency 'bundler', '~> 1.17'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'pry-byebug'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rubocop', '~> 0.60'
end
