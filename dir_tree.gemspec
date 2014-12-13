# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dir_tree/version'

Gem::Specification.new do |spec|
  spec.name          = "dir_tree"
  spec.version       = DirTree::VERSION
  spec.authors       = ["WAKASUGI 5T111111"]
  spec.email         = ["baenej@gmail.com"]
  spec.summary       = "Convert directory tree structure into a hash"
  spec.description   = "No description"
  spec.homepage      = "https://github.com/5t111111/dir_tree"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'minitest', '~> 5.5', '>= 5.5.0'
end
