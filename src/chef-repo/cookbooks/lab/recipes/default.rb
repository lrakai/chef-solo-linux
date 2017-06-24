package 'epel-release' # package repository for nginx
package 'nginx'

service 'nginx' do
  # declare actions the service supports
  supports status: true, restart: true, reload: true
  action [ :enable, :start ]
end