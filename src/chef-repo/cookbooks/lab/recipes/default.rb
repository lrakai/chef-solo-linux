package node['packages']['nginx_repo']
package 'nginx'

service 'nginx' do
  # declare actions the service supports
  supports status: true, restart: true, reload: true
  action [ :enable, :start ]
end

directory node['nginx']['root']

cookbook_file "#{node['nginx']['root']}/index.html" do
  action :create
  notifies :reload, 'service[nginx]', :immediately
end

template '/etc/nginx/nginx.conf' do
  action :create
  notifies :reload, 'service[nginx]', :immediately
end