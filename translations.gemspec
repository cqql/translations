# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'translations/version'

Gem::Specification.new do |gem|
  gem.name          = "translations"
  gem.version       = Translations::VERSION
  gem.authors       = ["Marten Lienen"]
  gem.email         = ["marten.lienen@gmail.com"]
  gem.description   = "Manage YAML translations"
  gem.summary       = "Stop wasting time altering the structure of your i18n files"
  gem.homepage      = "https://github.com/CQQL/translations"

  gem.add_dependency "thor", "~> 0.18.1"

  gem.add_development_dependency "rake", "~> 10.3"
  gem.add_development_dependency "rspec", "~> 3.0"
  gem.add_development_dependency "wrong", "~> 0.7"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
