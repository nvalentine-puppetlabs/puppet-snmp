class snmp::service inherits snmp {
  service { $service: ensure => running, enable => true, }
}
