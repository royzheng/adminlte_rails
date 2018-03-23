
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "adminlte_rails/version"

Gem::Specification.new do |spec|
  spec.name          = "adminlte_rails"
  spec.version       = AdminlteRails::VERSION
  spec.authors       = ["Roy Zheng"]
  spec.email         = ["github@roy.cc"]

  spec.summary       = %q{AdminLTE2 on rails}
  spec.description   = %q{AdminLTE2 on rails}
  spec.homepage      = "https://github.com/royzheng/adminlte_rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
