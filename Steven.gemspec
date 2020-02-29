
lib = File.expand_path('lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "Steven/version"

Gem::Specification.new do |spec|
  spec.name          = "Steven"
  spec.version       = Steven::VERSION
  spec.authors       = ["laurenball"]
  spec.email         = ["lauren.balL@annkissam.com"]

  spec.summary       = "He'll be your angle or your devil :^)"
  spec.homepage      = "https://github.com/laurenball/Steven"
  spec.license       = "MIT"

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 12.3"
  spec.add_development_dependency "rspec", "~> 3.0"
end
