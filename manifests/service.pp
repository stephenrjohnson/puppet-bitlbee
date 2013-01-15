# Class: bitlbee::service
#
# Class which ensures the bitlbee service is running
class bitlbee::service {
  case $::operatingsystem {
    'RedHat', 'CentOS', 'Scientific', 'OEL', 'Amazon': {
      $TMPcommand = "killall bitlbee; bitlbee -n -${bitlbee::mode} -p ${bitlbee::port} &"
    }
    'Ubuntu', 'Debian': {
      $TMPcommand = "killall bitlbee; bitlbee -${bitlbee::mode} -p ${bitlbee::port}"
    }
    default: {}
  }

  exec { 'bitlbee':
    command     => $TMPcommand,
    refreshonly => true
  }
}
