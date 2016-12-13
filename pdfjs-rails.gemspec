# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pdfjs/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "pdfjs-rails"
  spec.version       = Pdfjs::Rails::VERSION
  spec.authors       = ["Stephen Myers"]
  spec.email         = ["scmyers11@gmail.com"]

  spec.summary       = %q{Wrapper for Mozilla PDF.js library for use with rails.}
  spec.description   = %q{Wrapper for Mozilla PDF.js library for use with rails. That library can be found here: https://github.com/mozilla/pdf.js}
  spec.homepage      = ""
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib", "vendor"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "railties", ">= 3.1"
end
