# -*- ruby -*-

require 'rubygems'
require 'hoe'

# Hoe.plugin :compiler
# Hoe.plugin :gem_prelude_sucks
# Hoe.plugin :inline
# Hoe.plugin :racc
# Hoe.plugin :rubyforge

Hoe.plugin :minitest
Hoe.plugin :gemspec   # `gem install hoe-gemspec`
Hoe.plugin :bundler   # `gem install hoe-bundler`

Hoe.spec '../farel' do
  developer('Steve Jorgensen', 'stevej@stevej.name')

  extra_deps << ['arel', '~>2.0']

  self.readme_file      = 'README.markdown'
  self.extra_rdoc_files = FileList['README.markdown']
end

# vim: syntax=ruby
