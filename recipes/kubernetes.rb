# frozen_string_literal: true

#
# Cookbook Name:: server-base
# Recipe:: kubernetes
#
# Copyright (C) 2014-2017 Pulselocker, Inc.
# Copyright (C) 2018-2019 TGW Consulting, LLC.
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

case node['platform_family']
when 'debian'
  package 'apt-transport-https' do
    action :install
  end
  package 'curl' do
    action :install
  end
  apt_repository 'kubernetes' do
    uri 'https://apt.kubernetes.io/'
    components ['main']
    distribution 'kubernetes-xenial'
    key 'https://packages.cloud.google.com/apt/doc/apt-key.gpg'
    cache_rebuild true
    action :add
  end
  package %w(kubelet kubeadm kubectl) do
    action :install
  end
  bash 'mark_apt_packages' do
    code <<-EOH
    apt-mark hold kubelet kubeadm kubectl
    EOH
  end
when 'rhel'
  yum_repository 'kubernetes' do
    baseurl 'https://packages.cloud.google.com/yum/repos/kubernetes-el7-x86_64'
    enabled true
    gpgcheck true
    repo_gpgcheck true
    gpgkey 'https://packages.cloud.google.com/yum/doc/yum-key.gpg https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg'
    action :create
  end
  bash 'rhel_selinux_settings' do
    code <<-EOH
    setenforce 0
    sed -i 's/^SELINUX=enforcing$/SELINUX=permissive/' /etc/selinux/config
    EOH
    only_if node['server-base']['skip_selinux']
  end
  package %w(kubelet kubeadm kubectl) do
    action :install
  end
  bash 'enable_kubelet' do
    code <<-EOH
    systemctl enable kubelet && systemctl start kubelet
    EOH
  end
end
