# frozen_string_literal: true

name             'server-base'
maintainer       'TGW Consulting, LLC'
maintainer_email 'sean@tgwconsulting.co'
license          'Apache-2.0'
description      'Installs/Configures base server environment'
long_description 'Installs/Configures base server environment'
version          '2.5.0'
issues_url       'https://github.com/arktos65/server-base-cookbook/issues' if respond_to?(:issues_url)
source_url       'https://github.com/arktos65/server-base-cookbook' if respond_to?(:source_url)
chef_version     '>= 13'

%w[debian ubuntu centos fedora redhat scientific].each do |os|
  supports os
end

# Recipes that can be used
recipe 'server-base', 'Default recipe installs all base packages for a Linux server.'
recipe 'server-base::system-common', 'Common packages and tools for Linux servers.'
recipe 'server-base::python-support', 'Installs Python 2.x/3.x environments.'
recipe 'server-base::ruby-support', 'Installs Ruby 2.x environment.'

# Package dependencies with versions
depends 'apt'
depends 'chef-client'
depends 'openssh'
depends 'ntp'
depends 'rsyslog'
depends 'build-essential'
depends 'ruby_rbenv'
depends 'ruby_build'
depends 'newrelic-infra'
depends 'rake'
depends 'zip'
depends 'poise-python'
depends 'yum'
