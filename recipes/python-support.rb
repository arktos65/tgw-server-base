# frozen_string_literal: true

#
# Cookbook Name:: tgw-server-base
# Recipe:: python-support
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

# Set installation requirements via attributes
node.override['poise-python']['install_python2'] = node['tgw-server-base']['python2']['install']
node.override['poise-python']['install_python3'] = node['tgw-server-base']['python3']['install']

# Workaround for poise-python v1.7 cookbook bug
node.override['poise-python']['options']['pip_version'] = "18.0"

# Update APT packages
include_recipe 'apt'

# Install Python environment
include_recipe 'poise-python'
