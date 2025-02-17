# frozen_string_literal: true

require 'rspec'
require 'sys/uname'

RSpec.configure do |config|
  config.filter_run_excluding(:solaris) unless RbConfig::CONFIG['host_os'] =~ /sunos|solaris/i
  config.filter_run_excluding(:bsd) unless RbConfig::CONFIG['host_os'] =~ /powerpc|darwin|macos|bsd/i
  config.filter_run_excluding(:hpux) unless RbConfig::CONFIG['host_os'] =~ /hpux/i
  config.filter_run_excluding(:linux) unless RbConfig::CONFIG['host_os'] =~ /linux/i
  config.filter_run_excluding(:windows) unless Gem.win_platform?

  puts "Running tests with#{'out' if ENV['DONT_USE_OLE']} OLE"
end
