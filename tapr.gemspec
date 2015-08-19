# coding: utf-8

Gem::Specification.new do |spec|
  spec.name        = 'tapr'
  spec.version     = '0.1.0'
  spec.author      = 'Eloy Espinaco'
  spec.email       = 'eloyesp@gmail.com'

  spec.summary     = %q{TAP for ruby}
  spec.description = %q{Test framework that produces TAP complaint output}
  spec.homepage    = 'https://github.com/eloyesp/tapr'
  spec.license     = "AGPL-3.0+"

  spec.files       = `git ls-files -z lib`.split("\x0")
end
