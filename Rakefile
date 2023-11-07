require 'rake'
require 'rake/clean'
require 'rbconfig'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'

CLEAN.include("**/*.rbc", "**/*.rbx", "**/*.gem", "**/*.lock")

namespace :gem do
  desc "Create the sys-uname gem"
  task :create => [:clean] do
    require 'rubygems/package'
    spec = Gem::Specification.load('sys-uname.gemspec')
    Gem::Package.build(spec)
  end

  desc "Install the sys-uname gem"
  task :install => [:create] do
    file = Dir["*.gem"].first
    sh "gem install #{file}"
  end
end

RuboCop::RakeTask.new

RSpec::Core::RakeTask.new(:spec_without_ole) do
  ENV['DONT_USE_OLE'] = '1'
end

RSpec::Core::RakeTask.new(:spec_with_ole) do
  ENV['DONT_USE_OLE'] = nil
end

desc "Run the test suite"
task :spec => [:spec_with_ole, :spec_without_ole]

task :default => :spec
