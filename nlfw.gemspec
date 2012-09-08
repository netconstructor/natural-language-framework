lib_path = File.expand_path(File.dirname(__FILE__) + '/lib')
$LOAD_PATH.unshift(lib_path) unless $LOAD_PATH.include?(lib_path)

require 'rake'

# Define a constant here to use this spec in the Rakefile.
Gem::Specification.new do |s|
  s.name = 'nlfw'
  # it is the description for 'gem list -d'
  s.summary = 'Natural Language Framework'
  s.description = 'Natural Language Framework is intended to be a collection of bindings for Ruby and provide access to general purpose NLP components. OpenNLP, GATE components, standalone tools (TreeTagger, Stanford Parser, etc.) will be accessible through NLFW.'

  s.version = '0.0.1.alpa'
  s.author = "Andrei Beliankou"
  s.email = "a.belenkow@uni-trier.de"
  s.homepage = "http://www.uni-trier.de/index.php?id=34451"
  s.extra_rdoc_files = ['README', 'LICENSE', 'CHANGELOG']
  s.rdoc_options = ['-m', 'README']
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>=1.8.5'
  s.files = FileList['lib/**/*.rb',
                     'README',
                     'LICENSE',
                     'CHANGELOG',
                     '.yardopts',
                     'test/**/*'].to_a
  s.test_files = FileList['test/**/*'].to_a
end
