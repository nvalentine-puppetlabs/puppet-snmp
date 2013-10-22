class snmp::config inherits snmp {

  file_line { 'ro community string':
    ensure => present,
    path => $config,
    match => '^com2sec\s+notConfigUser\s+default.*',
    line => "com2sec notConfigUser default ${ro_community}",
  }

  if $rw_community {
    file_line { 'rw community string':
      ensure => present,
      path => $config,
      match => '^com2sec\s+notConfigUser\s+default.*',
      line => "com2sec notConfigUser default ${rw_community}",
    }
  }

  file_line { 'syslocation':
    ensure => present,
    path => $config,
    match => '^\s*syslocation.*$',
    line => "syslocation ${location}",
  }

  file_line { 'syscontact': 
    ensure => present,
    path => $config,
    match => '^\s*syscontact.*$',
    line => "syscontact ${contact}",
  }
}
