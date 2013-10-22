class snmp::install inherits snmp {
  package { $package: ensure => installed, }
}
