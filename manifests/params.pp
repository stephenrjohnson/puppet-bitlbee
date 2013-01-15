# Class bitlbee::params
#
# This class contains every parameter which will be used in this puppet module
# for setting up the bitlbee service
class bitlbee::params {
  $configdir      = '/etc/bitlbee/'
  $mode           = 'I'
  $port           = '6667'
  $authmode       = 'Open'
  $authpassword   = undef
  $chathostname   = $::hostname
  $location       = 'this server location'
  $motd           = false
  $user           = 'bitlbee'
}
