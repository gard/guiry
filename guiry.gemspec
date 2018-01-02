# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'guiry/version'

Gem::Specification.new do |spec|
  spec.name          = 'guiry'
  spec.license       = 'MIT'
  spec.version       = Guiry::VERSION
  spec.authors       = ['Gard Honningsø']
  spec.email         = ['gard@honningso.com']

  spec.summary       = %q{Show status of multiple git repositories}
  spec.description   = %q{Show status of multiple git repositories}
  spec.homepage      = 'http://github.com/gard/guiry'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'tty-color', '~> 0.4.2'
  spec.add_dependency 'tty-cursor', '~> 0.5.0'
  spec.add_dependency 'tty-command', '~> 0.6.0'
  spec.add_dependency 'tty-editor', '~> 0.2.1'
  spec.add_dependency 'tty-file', '~> 0.4.0'
  spec.add_dependency 'tty-pager', '~> 0.9.0'
  spec.add_dependency 'tty-platform', '~> 0.1.0'
  spec.add_dependency 'tty-progressbar', '~> 0.12.2'
  spec.add_dependency 'tty-prompt', '~> 0.13.2'
  spec.add_dependency 'tty-screen', '~> 0.5.0'
  spec.add_dependency 'tty-spinner', '~> 0.7.0'
  spec.add_dependency 'tty-table', '~> 0.8.0'
  spec.add_dependency 'tty-tree', '~> 0.1.0'
  spec.add_dependency 'tty-which', '~> 0.3.0'
  spec.add_dependency 'pastel', '~> 0.7.0'
  spec.add_dependency 'thor', '~> 0.19.4'

  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest', '~> 5.0'
end
