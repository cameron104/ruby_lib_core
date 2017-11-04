# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'appium_lib_core/version'

Gem::Specification.new do |spec|
  spec.name          = 'appium_lib_core'
  spec.version       = Appium::Core::VERSION
  spec.authors       = ['Kazuaki MATSUO']
  spec.email         = ['fly.49.89.over@gmail.com']

  spec.summary       = %q{Minimal Ruby library for Appium.}
  spec.description   = %q{Minimal Ruby library for Appium.}
  spec.homepage      = 'https://github.com/appium/ruby_lib'
  spec.license       = 'Apache-2.0'
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(doc|test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'selenium-webdriver', '~> 3.4', '>= 3.4.1'
  spec.add_runtime_dependency 'json', '>= 1.8'

  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'yard', '~> 0.9'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'minitest-reporters', '~> 1.1'
  spec.add_development_dependency 'webmock', '~> 3.1.0'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rubocop'
end