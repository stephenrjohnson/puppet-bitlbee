# Class: bitlbee::config
#
# Class which configures the bitlbee service
class bitlbee::config {
  file { 'bitlbee.conf':
    path    => "${bitlbee::configdir}/bitlbee.conf",
    content => template('bitlbee/bitlbee.conf.erb'),
    notify  => Exec['bitlbee']
  }
  file { 'motd.txt':
    path    => "${bitlbee::configdir}/motd.txt",
    content => template('bitlbee/motd.txt.erb'),
    notify  => Exec['bitlbee']
  }

}
