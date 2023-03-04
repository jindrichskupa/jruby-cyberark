#-*- mode: ruby -*-

require 'fileutils'

version = '0.0.3'.freeze

FileUtils.mkdir_p( 'lib/jruby-cyberark' )
File.open( 'lib/jruby-cyberark/version.rb', 'w' ) do |f|
  f.print <<EOF
module JRubyJars
  VERSION = '#{version}'
  MAVEN_VERSION = '#{version}'
end
EOF
end

Gem::Specification.new do |s|
  s.name = 'jruby-cyberark'
  s.version = version
  s.authors = ['Jindrich Skupa']
  s.email = 'jindrich.skupa@gmail.com'
  s.summary = 'The CyberArk javapasswordsdk.jar'
  s.homepage = 'https://github.com/jindrichskupa/jruby-cyberark'
  s.description = File.read('README.md', encoding: 'UTF-8').split(/\n{2,}/)[3]
  s.licenses = %w(EPL-1.0 GPL-2.0 LGPL-2.1)
  s.files = Dir['lib/**/*.*'] + Dir[ 'jruby-cyberark.gemspec' ]
end

# vim: syntax=Ruby
