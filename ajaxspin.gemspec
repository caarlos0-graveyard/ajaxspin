# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = "ajaxspin"
  gem.version       = "0.0.3"
  gem.authors       = ["Carlos Alexandro Becker"]
  gem.email         = ["caarlos0@gmail.com"]
  gem.description   = %q{A simple ajax status spin indicator build on top of spin.js}
  gem.summary       = %q{A simple asset gem that provide an out-of-the box ajax status spin indicator compatible with turbolinks and jquery/jquery_ujs events without any modification.}
  gem.homepage      = "http://github.com/caarlos0/ajaxspin"

  gem.files         = Dir["lib/assets/javascripts/*.js.coffee", "lib/*", "README.md"]
  gem.add_dependency 'coffee-rails'
  gem.add_dependency 'spinjs-rails'
end
