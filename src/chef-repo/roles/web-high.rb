name "web-low"
description "Function as a high traffic web server"

default_attributes 'nginx' => {
  'worker_processes' => 2,
  'worker_connections' => 2048
}

run_list 'recipe[lab::hello]',
         'recipe[lab]'