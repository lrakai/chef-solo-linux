default['packages']['nginx_repo']      = 'epel-release'

default['nginx']['root']               = '/var/www/html'
default['nginx']['port']               = '80'
default['nginx']['worker_processes']   = 1
default['nginx']['worker_connections'] = 1024