require 'rubygems'
require 'rake'
require 'rspec/core/rake_task'
require 'puppetlabs_spec_helper/rake_tasks'
require 'puppet-syntax/tasks/puppet-syntax'
require 'puppet-lint/tasks/puppet-lint'

PuppetLint.configuration.ignore_paths = ["pkg/**/*.pp", "tests/*.pp", "dist/**/examples/*.pp", "modules/**/*.pp"]
PuppetLint.configuration.send('disable_80chars')
# We should enable arrow_alignment..
PuppetLint.configuration.send('disable_arrow_alignment')
PuppetLint.configuration.send('disable_autoloader_layout')
PuppetLint.configuration.send('disable_documentation')
PuppetLint.configuration.send('disable_quoted_booleans')
PuppetLint.configuration.send('disable_class_inherits_from_params_class')
#task :default => [:spec, :lint]
# Puppet Syntax
PuppetSyntax.exclude_paths = ["modules/**/*", "pkg/**/*.pp", "tests/*.pp"]
PuppetSyntax.hieradata_paths = ["*.yaml", "hieradata/*.yaml", "hieradata/**/*.yaml"]

task :default => [:lint, :syntax]
