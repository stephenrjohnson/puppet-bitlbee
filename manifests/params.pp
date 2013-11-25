# Class bitlbee::params
#
# This class contains every parameter which will be used in this puppet module
# for setting up the bitlbee service
# Default password is password
class bitlbee::params {
  $configdir       = '/etc/bitlbee/'
  $package_name    = 'bitlbee'
  $pacakge_version = 'installed'
  $mode            = 'F'
  $port            = '6668'
  $authmode        = 'Open'
  $authpassword    = 'bmT0PkO/t4VnIwcWcXW4XchYHzo5'
  $chathostname    = $::hostname
  $location        = 'this server location'
  $motd            = false
  $user            = 'bitlbee'
  $listen          = '127.0.0.1'
}
