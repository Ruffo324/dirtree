lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dirtree/version'

Gem::Specification.new do |spec|
  spec.name          = 'dirtree'
  spec.version       = Dirtree::VERSION
  spec.authors       = ['Emad Elsaid']
  spec.email         = ['emad.elsaid.hamed@gmail.com']

  spec.summary       = 'display list of file paths as an interactive tree'
  spec.description   = 'display list of file paths as an interactive tree'
  spec.homepage      = 'https://www.github.com/blazeeboy/dirtree'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'

  spec.post_install_message = <<-GUIDE
    To get autocompletion functionality
    run: dirtree completion >> ~/.bashrc
    Or, dirtree completion > /usr/local/etc/bash_completion.d/dirtree
    GUIDE
end
