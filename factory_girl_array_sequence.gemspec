# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'factory_girl_array_sequence/version'

Gem::Specification.new do |gem|
  gem.authors       = ["Erik Lyngved"]
  gem.email         = ["elyngved@gmail.com"]
  gem.description   = %q{Simple extension for the factory_girl gem that lets you define custom sequences with arrays}
  gem.summary       = %q{Simple extension for the factory_girl gem that lets you define custom sequences with arrays}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "factory_girl_array_sequence"
  gem.require_paths = ["lib"]
  gem.version       = FactoryGirlArraySequence::VERSION

  gem.add_dependency 'factory_girl', '~> 3.0'

  gem.add_development_dependency 'rake', '~> 0.9'
  gem.add_development_dependency 'rspec', '~> 2.5'
end
