# frozen_string_literal: true

#
# Cookbook Name:: server-base
# Recipe:: default
#
# Copyright (C) 2014-2017 Pulselocker, Inc.
# Copyright (C) 2018-2020 TGW Consulting, LLC.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default['server-base']['install_dnsmasq'] = false
default['server-base']['install_chef_client'] = false
default['server-base']['install_kubeadm'] = false

# Python environment
default['server-base']['python2']['install'] = true
default['server-base']['python3']['install'] = true

# Ruby environment
default['server-base']['ruby']['version'] = '2.6.6'
default['server-base']['ruby']['build'] = 'v20201005'

# Testing overrides
default['server-base']['skip_selinux'] = false

# New Relic
default['server-base']['new_relic']['install'] = true
default['server-base']['new_relic']['key'] = 'replace me'

