
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "string_helper_rmiles19/version"

Gem::Specification.new do |spec|
  spec.name          = "string_helper_rmiles19"
  spec.version       = StringHelperRmiles19::VERSION
  spec.authors       = ["Rachel Miles"]
  spec.email         = ["milesrachel9@gmail.com"]

  spec.summary       = "Useless string helpers to learn how to build gems"
  spec.description   = 
  spec.homepage      = "https://github.com/rmiles19/string_helper_rmiles19GEM"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
