apt_package 'dnsmasq' do
  action :install
end

service 'dnsmasq' do
  action [ :enable, :start ]
  supports :status => true, :start => true, :stop => true, :restart => true
end

cookbook_file '/etc/dnsmasq.conf' do
  source 'dnsmasq.conf'
  owner 'root'
  group 'root'
  mode 0644
  action :create
  notifies :restart, 'service[dnsmasq]', :immediately
end
