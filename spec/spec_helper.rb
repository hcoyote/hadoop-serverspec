#$LOAD_PATH.unshift File.expand_path('/usr/lib/ruby/gems/1.8/gems/serverspec-2.7.1/lib/', __FILE__)
require 'rubygems'
require 'serverspec'

set :os, :family => 'redhat', :release => '6', :arch => 'x86_64'

set :backend, :exec
