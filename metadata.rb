name             'server-base'
maintainer       'Pulselocker, Inc.'
maintainer_email 'sean@pulselocker.com'
license          'Apache 2.0'
description      'Installs/Configures server-base'
long_description 'Installs/Configures server-base'
version          '0.1.0'

recipe 'server-base', 'Default recipe installs all base packages for a Linux server.'
recipe 'server-base::system-common', 'Common packages and tools for Linux servers.'
recipe 'server-base::python-support', 'Installs Python 2.x environment.'
recipe 'server-base::ruby-support', 'Installs Ruby 2.x environment.'

depends 'apt'
depends 'openssh'
depends 'ntp'
depends 'rsyslog'
depends 'networking_basic'
depends 'build-essential'
depends 'ruby_build', '>= 0.8.0'
depends 'rake', '>= 0.1.1'
depends 'zip', '>= 1.1.0'
depends 'python', '>= 1.4.6'
