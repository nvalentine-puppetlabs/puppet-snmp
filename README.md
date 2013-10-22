puppet-snmp
-----------

Very basic Puppet module to install and configure RO snmpd.

# Usage
    class { 'snmp':
      ro_community => 'public',
      contact => 'foo@example.org',
      location => 'The Moon',
    }

# License
Apache License, Version 2.0

# Contact
Nathan Valentine - nathan@puppetlabs.com|nrvale0@gmail.com

# Support
Please log tickets and issues at [the project's site](http://github.com/nvalentine-puppetlabs/puppet-snmp)

