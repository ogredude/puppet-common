class common::mosh {

  class { 'apt': }

  package { 'python-software-properties':
    ensure => installed,
  }

  apt::ppa { 'ppa:keithw/mosh': }

  package { 'mosh':
    ensure  => installed,
    require => Apt::Ppa['ppa:keithw/mosh']
  }
}
