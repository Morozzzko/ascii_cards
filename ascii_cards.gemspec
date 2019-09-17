# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'ascii_cards/version'

Gem::Specification.new do |spec|
  spec.name        = 'ascii_cards'
  spec.version     = ASCIICards::VERSION
  spec.licenses    = ['MIT']
  spec.summary     = 'Simple yet fancy ASCII printer for playing cards'
  spec.authors     = ['Igor S. Morozov']
  spec.email       = 'igor@morozov.is'
  spec.files       = Dir['lib/**/*.rb']
  spec.homepage    = 'https://github.com/Morozzzko/ascii_cards'
end
