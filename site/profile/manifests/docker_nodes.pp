class profile::docker_nodes {
  include docker
  docker::run { 'helloworld':
  image   => 'base',
  command => '/bin/sh -c "while true; do echo hello world; sleep 1; done"',
  }
}
