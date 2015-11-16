# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubyfuri/version'

Gem::Specification.new do |spec|
  spec.name          = "rubyfuri"
  spec.version       = Rubyfuri::VERSION
  spec.authors       = ["karur4n"]
  spec.email         = ["karuran.f@gmail.com"]

  spec.summary       = "漢字かな交じり文に、ひらがなとローマ字のふりがな（ルビ）を付けます。"
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.homepage      = "https://github.com/karur4n/rubyfuri"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday"
  spec.add_dependency "nokogiri"
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
end
