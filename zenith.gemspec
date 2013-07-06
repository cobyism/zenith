# This Gemspec uses the wonderful RakeGem template
# See https://github.com/mojombo/rakegem for more information

Gem::Specification.new do |s|
  s.specification_version = 2 if s.respond_to? :specification_version=
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.rubygems_version = '1.3.5'

  ## Leave these as is they will be modified for you by the rake gemspec task.
  ## If your rubyforge_project name is different, then edit it and comment out
  ## the sub! line in the Rakefile
  s.name              = 'zenith'
  s.version           = '0.0.1'
  s.date              = '2013-07-06'
  s.rubyforge_project = 'zenith'
  ##################################

  s.summary     = "Zenith"
  s.description = "Ruby bindings for Emmet text snippet expansion."

  s.authors  = ["Coby Chapple"]
  s.email    = 'coby@github.com'
  s.homepage = 'https://github.com/cobyism/zenith'

  s.require_paths = %w[lib]

  ## List your development dependencies here. Development dependencies are
  ## those that are only needed during development
  #s.add_development_dependency('DEVDEPNAME', [">= 1.1.0", "< 2.0.0"])

  # = MANIFEST =
  s.files = %w[
    Gemfile
    README.md
    lib/zenith.rb
    zenith.gemspec
  ]
  # = MANIFEST =

  s.test_files = s.files.select { |path| path =~ /^test\/test_.*\.rb/ }
end
