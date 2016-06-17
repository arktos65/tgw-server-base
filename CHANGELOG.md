SERVER-BASE CHANGELOG
=====================

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
