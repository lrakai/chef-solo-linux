name "web-low"
description "Function as a low traffic web server"

default_attributes 'nginx' => {
  'worker_processes' => 1,
  'worker_connections' => 1024
}

run_list 'recipe[lab::hello]',
         'recipe[lab]'