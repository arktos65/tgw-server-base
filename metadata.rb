name             'server-base'
maintainer       'TGW Consulting, LLC'
maintainer_email 'sean@tgwconsulting.co'
license          'Apache-2.0'
description      'Installs/Configures server-base'
long_description 'Installs/Configures server-base'
version          '2.3.0'
issues_url       'https://github.com/arktos65/server-base-cookbook/issues' if respond_to?(:issues_url)
source_url       'https://github.com/arktos65/server-base-cookbook' if respond_to?(:source_url)
supports         'ubuntu', '>= 14.04'
chef_version     '>= 12'

# Recipes that can be used
recipe 'server-base', 'Default recipe installs all base packages for a Linux server.'
recipe 'server-base::system-common', 'Common packages and tools for Linux servers.'
recipe 'server-base::python-support', 'Installs Python 2.x/3.x environments.'
recipe 'server-base::ruby-support', 'Installs Ruby 2.x environment.'

# Package dependencies with versions
depends 'apt', '~> 7.0.0'
depends 'openssh', '~> 2.6.3'
depends 'ntp', '~> 3.5.6'
depends 'rsyslog', '~> 6.0.4'
depends 'build-essential', '~> 8.1.1'
depends 'ruby_build', '~> 1.1.0'
depends 'rake', '~> 0.1.1'
depends 'zip', '~> 1.1.0'
depends 'poise-python', '~> 1.7.0'
