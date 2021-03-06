# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "aaryn_biro_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "aaryn_biro_view_tool"
  spec.version       = AarynBiroViewTool::VERSION
  spec.authors       = ["aabiro"]
  spec.email         = ["aaryn.alexander@gmail.com"]

  spec.summary       = %q{Some view specific methods I use.}
  spec.description   = %q{Provides generated HTML data for Rails applications.}
  spec.homepage      = "https://www.aarynbiro.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
