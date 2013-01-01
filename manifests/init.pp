# Class: bitlbee
#
# Initialization class for the bitlbee service
class bitlbee (
  $configdir    = $bitlbee::params::configdir,
  $mode         = $bitlbee::params::mode,
  $port         = $bitlbee::params::port,
  $authmode     = $bitlbee::params::authmode,
  $authpassword = $bitlbee::params::authpassword,
  $chathostname = $bitlbee::params::chathostname,
  $location      = $bitlbee::params::location,
) inherits bitlbee::params {

  include ::bitlbee::install
  include ::bitlbee::config
  include ::bitlbee::service

  Class['::bitlbee::install'] ->
  Class['::bitlbee::config'] ->
  Class['::bitlbee::service']
}
