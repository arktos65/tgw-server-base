SERVER-BASE COOKBOOK
====================

[![Build Status](https://secure.travis-ci.org/arktos65/server-base-cookbook.png)](http://travis-ci.org/arktos65/server-base-cookbook)

This wrapper cookbook installs packages required on Linux servers.

## Supported Platforms

Supported platforms: Ubuntu 14.04/16.04 LTS, RedHat Enterprise Linux 7, Chef 12/13

## Attributes

The behavior of the upstream cookbooks is controlled by attributes.  You may see what the default values are by
studying the files in the attributes directory.

|Attribute   |Default Value   |Description   |
|---|---|---|
| node['server-base']['python2']['install'] | true | Installs Python 2.x interpreter. |
| node['server-base']['python3']['install'] | true | Installs Python 3.x interpreter. |
| node['server-base']['install_dnsmasq'] | false | Installs DNS service if true. |
| node['server-base']['install_chef_client'] | false | Installs and configures chef-client as a service if true. |
| node['server-base']['install_kubeadm'] | false | Installs kubelet, kubeadm, and kubectl if true. |

## Usage

### server-base::default

Include `server-base` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[server-base::default]"
  ]
}
```

## Contributing

1. Fork the repository on Github
2. Create a named feature branch (i.e. `add-new-recipe`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request

License & Authors
-----------------
- Author:: Sean M. Sullivan (<sean@tgwconsulting.co>)

```text
Copyright:: 2014-2017 Pulselocker, Inc.
Copyright:: 2018-2019 TGW Consulting, LLC.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
