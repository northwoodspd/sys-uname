require 'rubygems'

Gem::Specification.new do |spec|
  spec.name       = 'sys-uname'
  spec.version    = '1.2.4-NW'
  spec.author     = 'Daniel J. Berger'
  spec.email      = 'djberg96@gmail.com'
  spec.homepage   = 'http://github.com/djberg96/sys-uname'
  spec.summary    = 'An interface for returning uname (platform) information'
  spec.license    = 'Apache-2.0'
  spec.files      = Dir['**/*'].reject{ |f| f.include?('git') || f.include?('.gem') }
  spec.test_files = Dir['spec/*_spec.rb']

  spec.extra_rdoc_files = Dir['doc/*.rdoc']

  spec.add_dependency('ffi', '~> 1.15')
  spec.add_development_dependency('rspec', '~> 3.12')
  spec.add_development_dependency('rake', '~> 13.0')
  spec.add_development_dependency('rubocop', '~> 1.57')
  spec.add_development_dependency('rubocop-rspec', '~> 2.25')

  spec.metadata = {
    'homepage_uri'          => 'https://github.com/djberg96/sys-uname',
    'bug_tracker_uri'       => 'https://github.com/djberg96/sys-uname/issues',
    'changelog_uri'         => 'https://github.com/djberg96/sys-uname/blob/main/CHANGES.md',
    'documentation_uri'     => 'https://github.com/djberg96/sys-uname/wiki',
    'source_code_uri'       => 'https://github.com/djberg96/sys-uname',
    'wiki_uri'              => 'https://github.com/djberg96/sys-uname/wiki',
    'rubygems_mfa_required' => 'true',
    'github_repo'           => 'https://github.com/djberg96/sys-uname'
  }

  spec.description = <<-EOF
    The sys-uname library provides an interface for gathering information
    about your current platform. The library is named after the Unix 'uname'
    command but also works on MS Windows. Available information includes
    OS name, OS version, system name and so on. Additional information is
    available for certain platforms.
  EOF
end
