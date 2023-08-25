class profile::docker_nodes {
  include docker
  docker::image { 'ubuntu':
    image_tag => 'precise'
  }
}
