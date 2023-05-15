node default {
  file {'/root/README':
    ensure => file,
    content => 'hello world!',
    owner => 'root',
    }
}
