# frozen_string_literal: true

#
# Cookbook Name:: tgw-server-base
# Recipe:: default
#
# Copyright (C) 2014-2017 Pulselocker, Inc.
# Copyright (C) 2018 TGW Consulting, LLC.
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

# Force APT UPDATE during compile phase
node.override['apt']['compile_time_update'] = true

# Runlist of recipes
include_recipe 'tgw-server-base::system-common'
include_recipe 'tgw-server-base::python-support'
include_recipe 'tgw-server-base::ruby-support'

include_recipe 'tgw-server-base::dnsmasq' if node['tgw-server-base']['install_dnsmasq']

include_recipe 'tgw-server-base::client' if node['tgw-server-base']['install_chef_client']
