class snmp::params {
  case $::osfamily {
    'redhat': {
      $package = 'net-snmp'
      $service = 'snmpd'
      $config = '/etc/snmp/snmpd.conf'
    }
    default: {fail("OS family ${::osfamily} not supported!")}
  }
}
