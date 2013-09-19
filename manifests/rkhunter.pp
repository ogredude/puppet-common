# == Class: rkhunter
#
# Installs rkhunter rootkit hunting toolkit
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
# class {'common::rkhunter':}
#
# === Authors
#
# Eric Floerchinger <eric@pzo.vg>
#
# === Copyright
#
# Copyright 2013 Project Zen Online, LLC, unless otherwise noted.
#
class common::rkhunter {
  package { 'rkhunter':
    ensure => installed,
  }

 }
