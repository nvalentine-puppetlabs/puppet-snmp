class snmp(
  $ro_community = 'public',
  $rw_community = undef,
) inherits snmp::params {

  validate_string($ro_community)
  if $rw_community { validate_string($rw_community) }
  valdate_re($version, '^v[1-3]$')

  # PFS (sort of)
  class{'snmp::install':} -> class{'snmp::config':} ~> class{'snmp::service':}
}
