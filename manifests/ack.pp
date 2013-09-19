class common::ack {

  package { "ack-grep":
    ensure => installed,
    notify => Exec['update-alternatives'],
  }

  exec { 'update-alternatives':
    command     => '/usr/sbin/update-alternatives --install /usr/bin/ack ack /usr/bin/ack-grep 100',
    refreshonly => true,
   }
}
