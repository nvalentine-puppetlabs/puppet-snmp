class snmp::config inherits snmp {

  file_line { 'ro community string':
    ensure => present,
    path => $config,
    match => '^com2sec\s+notConfigUser\s+default.*',
    line => "com2sec notConfigUser ${ro_community}",
  }

  if $rw_community {
    file_line { 'rw community string':
      ensure => present,
      path => $config,
      match => '^com2sec\s+notConfigUser\s+default.*',
      line => "com2sec notConfigUser ${rw_community}",
    }
  }
}
