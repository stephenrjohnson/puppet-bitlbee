# Class: bitlbee
#
# Initialization class for the bitlbee service
class bitlbee (
  $package_name    = $::bitlbee::params::package_name,
  $package_version = $::bitlbee::params::package_version,
  $configdir       = $::bitlbee::params::configdir,
  $mode            = $::bitlbee::params::mode,
  $user            = $::bitlbee::params::user,
  $port            = $::bitlbee::params::port,
  $authmode        = $::bitlbee::params::authmode,
  $authpassword    = $::bitlbee::params::authpassword,
  $chathostname    = $::bitlbee::params::chathostname,
  $location        = $::bitlbee::params::location,
  $user            = $::bitlbee::params::user,
) inherits bitlbee::params {

  package { $package_name:
    ensure  => $package_version,
  }

  file { 'bitlbee.conf':
    path    => "${bitlbee::configdir}/bitlbee.conf",
    content => template('bitlbee/bitlbee.conf.erb'),
    require => Package[$package_name],
    notify  => Service['bitlbee'],
  }

  file { 'bitlbee':
    ensure  => file,
    path    => "/etc/init.d/bitlbee",
    content => template('bitlbee/bitlbee.erb'),
    owner   => root,
    group   => root,
    mode    => '0755',
    require => Package[$package_name],
    notify  => Service['bitlbee'],
  }

  service{'bitlbee':
     ensure => running,
     enable => true,
  }

}
