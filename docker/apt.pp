include apt

exec { 'upgrade':
  command => '/usr/bin/apt upgrade || true'
}

-> exec { 'full-upgrade':
  command => '/usr/bin/apt full-upgrade || true'
}
