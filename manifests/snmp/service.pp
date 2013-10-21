class snmp::server inherits snmp {
  service { $service: ensure => running, enable => true, }
}
