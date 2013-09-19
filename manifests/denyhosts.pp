# == Define: common::denyhosts
#
# This makes sure denyhosts is up and running
#
# === Parameters
#
# $admin_email
#   String. Email address to send reports to. Defaults to ''
#
# $allow
#   Array. List of allowed hosts.
#
# === Examples
#
# class {'common::denyhosts': admin_email => 'root@localhost'; }
#
class common::denyhosts ( $admin_email = '', $allow = '') {

  package { "denyhosts": ensure => installed; }

  file { "/etc/denyhosts.conf":
    owner => root,
    group => root,
    mode => 644,
    content => template("common/denyhosts.conf.erb"),
    notify => Service["denyhosts"],
   }

   service {
     "denyhosts":
     ensure => running,
     enable => true,
     hasstatus => false,
     pattern => "denyhosts",
     require => Package["denyhosts"],
   }

   file {
     "/etc/hosts.allow":
     content => inline_template('<%= [allow.to_a.join("\n") , "\n" ].join %>'),
     owner => root,
     group => root,
     mode => 644,
   }

}

