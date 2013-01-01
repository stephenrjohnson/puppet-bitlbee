# Class: bitlbee::service
#
# Class which ensures the bitlbee service is running
class bitlbee::service {
  exec { 'bitlbee':
    command     => [
      "killall bitlbee; bitlbee -${bitlbee::mode} -p ${bitlbee::port}"
    ],
    refreshonly => true
  }
}
