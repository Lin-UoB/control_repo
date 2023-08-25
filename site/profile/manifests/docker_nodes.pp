class profile::docker_nodes {
  include docker
  docker::run { 'helloworld':
  image                 => 'base',
  command               => 'command',
  health_check_cmd      => '<command_to_execute_to_check_your_containers_health>',
  restart_on_unhealthy  => true,
  health_check_interval => '<time between running docker healthcheck>',
  }
}
