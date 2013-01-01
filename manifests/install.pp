# Class: bitlbee::install
#
# Installation of the bitlbee package
class bitlbee::install {
  package { [
    'bitlbee',
    'bitlbee-devel'
  ]:
    ensure  => 'latest'
  }
}
