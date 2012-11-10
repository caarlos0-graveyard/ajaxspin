# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ajaxspin/version'

Gem::Specification.new do |gem|
  gem.name          = "ajaxspin"
  gem.version       = Ajaxspin::VERSION
  gem.authors       = ["Carlos Alexandro Becker"]
  gem.email         = ["caarlos0@gmail.com"]
  gem.description   = %q{A simple ajax status indicator spin build on top of spin.js}
  gem.summary       = %q{A simples ajax status indicator spin build with coffeescript, using spin.js at background, compatible with turbolinks and jquery events.}
  gem.homepage      = "http://github.com/caarlos0/ajaxspin"

  gem.files         = Dir["lib/assets/javascripts/*.js.coffee", "lib/*", "README.md"]
  gem.add_dependency 'coffee-rails'
  gem.add_dependency 'spinjs-rails'
end
