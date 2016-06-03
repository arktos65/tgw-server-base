bash "install_dnsmasq" do
  code <<-EOH
    sudo apt-get install dnsmasq -y
  EOH
end

cookbook_file '/etc/dnsmasq.conf' do
  source 'dnsmasq.conf'
  owner 'root'
  group 'root'
  mode 0644
  action :create
end

service "dnsmasq" do
  action :restart
end
