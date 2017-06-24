package 'epel-release' # package repository for nginx
package 'nginx'

service 'nginx' do
  # declare actions the service supports
  supports status: true, restart: true, reload: true
  action [ :enable, :start ]
end

directory '/var/www'

cookbook_file '/var/www/index.html' do
 action :create
end

cookbook_file '/etc/nginx/nginx.conf' do
 action :create
end