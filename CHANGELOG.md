SERVER-BASE CHANGELOG
=====================

2.4.1 (02-Apr-2019)
-------------------
- Resolve CVE-2018-14404 in `nokogiri` gem.

2.4.0 (05-Jan-2019)
-------------------
- Install `kubelet`, `kubeadm`, and `kubectl` on Debian and RHEL systems.
- Updated Travis CI to include testing `kubernetes` recipe.

2.3.4 (04-Jan-2019)
-------------------
- Install `net-tools` package on RHEL systems.

2.3.3 (24-Dec-2018)
-------------------
- Resolved vulnerabilities with `rack` and `nokogiri` gems by upgrading to new versions.

2.3.2 (06-Jun-2018)
-------------------
- Added `chef-client` cookbook and configured for regular automated run of chef-client on target host.
- Fixed bug in `dnsmasq` recipe to support yum packages in addition to apt.

2.3.1 (24-May-2018)
-------------------
- Updated metadata.rb with supported OSes.
- Changed provisioner attributes in .kitchen.yml file.
- Added `stove` gem simplifying cookbook publishing to Chef Supermarket.

2.3.0 (23-May-2018)
-------------------
- Added support for Redhat Enterprise Linux 7, CentOS 7, Scientific Linux 7
- Dropped Ubuntu 14.04 from test suites
- Added CentOS 7 to test suites

2.2.1 (14-Mar-2018)
-------------------
- Updated gem package versions in Gemfile
- [CVE-2017-9050] Addressed Nokogiri vulnerability
- Code cleanup per Rubocop recommendations
- Replaced Travis Test Kitchen with Dokken.

2.2.0 (08-Feb-2018)
-------------------
- Changed maintainer information.
- Removed Chef 12 requirement
- Updated dependent package versions.

2.1.3 (16-Oct-2017)
-------------------
- [APPA-522] Fixed issue with dpkg overwriting configuration file.
- Added `$ rake linter` task for linter testing only.

2.1.2 (16-Aug-2017)
-------------------
- Deprecated `networking-basic` cookbook.
- Bumped version of `build-essential` cookbook.

2.1.1 (15-Aug-2017)
-------------------
- Removed old `.travis.yml` file no longer used.
- Restructured cookbook directory to get it working with Berkshelf.

2.1.0 (11-Aug-2017)
-------------------
- Restructured cookbook to support Travis/Docker integration tests.
- Added Travis/Docker integration testing.
- Pinned cookbook versions for: `openssh`, `rsyslog`, `ntp`, and `apt`.

2.0.0 (24-Jul-2017)
-------------------
- Deprecated `python` cookbook in favor of `poise-python`. 
- Added support for installing Python 3 installations.
- Added `openssh` cookbook dependency.

1.2.2 (16-May-2017)
-------------------
- Enable APT update during compile time of cookbook.
- Rolled back Python to use `python` cookbook instead of `poise-python`.

1.2.1 (11-May-2017)
-------------------
- Require Chef Omnibus 12.x package for backwards compatibility in Kitchen Test.

1.2.0 (09-Feb-2017)
-------------------
- Added support for Ubuntu 16.04 OS.
- Deprecated support of Ubuntu 12.04.
- Bumped `build-essential` cookbook version.
- Bumped `ruby_build` cookbook version.
- Deprecated `python` cookbook in favor of `poise-python`. 

1.1.1 (17-Jun-2016)
-------------------
- Do not install DNS cache by default.

1.1.0 (03-Jun-2016)
-------------------
- Add local DNS cache.

1.0.3 (15-Mar-2016)
-------------------
- Updated travis.yml to include Ruby 2.2.1 to support latest version of `foodcritic` gem.
- Made changes to support `foodcritic` 6.x.

1.0.2
-----
- Bug fixes.
- Changed networking_basic cookbook to networking-basic cookbook, maintained by Pulselocker.

1.0.1
-----
- Moved dependency version control to Berksfile.

1.0.0
-----
- Addition of the system-common recipe, which installs apt, ntp, openssh, ntp, rsyslog, build-essential, and zip.
- Addition of the python-support recipe, which installs python and pip.
- Addition of the ruby-support recipe, which installs Ruby and Rake.
