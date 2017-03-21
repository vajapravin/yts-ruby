# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yts/version'

Gem::Specification.new do |gem|
  gem.name        = 'yts-ruby'
  gem.version     = YTS::VERSION
  gem.authors     = ["Pravin Vaja"]
  gem.email       = 'vajapravin23@gmail.com'
  gem.description = %q{A Ruby gem for accessing the YTS torrents api}
  gem.summary     = %q{A Ruby gem for accessing the YTS torrents api}
  gem.homepage    = "https://github.com/vajapravin/yts-ruby"
  gem.require_paths  = %w[lib]
  gem.files = Dir.glob("lib/**/*.rb")
  gem.add_development_dependency 'httparty', '~> 0', '0.13.5'
  gem.add_development_dependency 'nokogiri', '~> 1.6.8', '1.6.8'
  gem.license       = 'GNU'
end
