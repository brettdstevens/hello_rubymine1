require_relative 'lib/hello_rubymine/version'

Gem::Specification.new do |spec|
  spec.name          = "hello_rubymine"
  spec.version       = HelloRubymine::VERSION
  spec.authors       = ["Brett D Stevens"]
  spec.email         = ["brettdstevens@gmail.com"]

  spec.homepage      = 'https://github.com/rubyminedoc/hello_rubymine'
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")
  spec.summary       = %q{a ruby gem}


  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = 'https://github.com/rubyminedoc/hello_rubymine'


  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
