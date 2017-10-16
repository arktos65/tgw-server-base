#
# Cookbook Name:: server-base
# Recipe:: system-common
#
# Copyright (C) 2014-2017 Pulselocker, Inc.
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

# Force dpkg to not overwrite configuration files - and don't ask anything
file '/etc/apt/apt.conf.d/force_confdef' do
  owner 'root'
  group 'root'
  mode '0644'
  content 'Dpkg::Options {
   "--force-confdef";
   "--force-confold";
}'
  action :create
end

# Install the common components required on all servers
include_recipe 'apt'
include_recipe 'openssh'
include_recipe 'ntp'
include_recipe 'rsyslog::default'
include_recipe 'build-essential'
include_recipe 'zip'
