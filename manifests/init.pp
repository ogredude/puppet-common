# == Class: common
#
# Provides common utilities that should be on each box.
#
# === Parameters
#
# None
#
# === Variables
#
# None
#
# === Examples
#
# class {'common':}
#
# === Authors
#
# Eric Floerchinger <eric@pzo.vg>
#
# === Copyright
#
# Copyright 2013 Project Zen Online, LLC, unless otherwise noted.
#

class common {
  package { ['bash-completion', 'iftop', 'iotop', 'lsof', 'man-db', 'openssh-client', 'rsync', 'tmux', 'vim-nox', 'unzip', 'wget', 'exuberant-ctags', 'htop']:
    ensure        => installed;
  }

  package { ['libreadline6-dev', 'zlib1g-dev', 'libssl-dev', 'libyaml-dev', 'libsqlite3-dev', 'sqlite3', 'libxml2-dev', 'libxslt1-dev', 'autoconf', 'libgdbm-dev', 'libncurses5-dev', 'automake', 'libtool', 'bison', 'pkg-config', 'libffi-dev', 'build-essential']:
    ensure => installed;
  }

  package { 'git-core':
    ensure => installed;
  }

  class { 'common::denyhosts': }
  class { 'common::rkhunter': }
  class { 'common::ack': }
  class { 'common::mosh': }

}
