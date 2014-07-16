class base_server::packages {
  package { 'install gcc':
    name   => 'gcc',
    ensure => present
  } ->

  package { 'install make':
    name   => 'make',
    ensure => present
  } ->

  package { 'install kernel-devel':
    name   => "kernel-devel-${kernelrelease}",
    ensure => present
  } ->

  package { 'install dkms':
    name   => 'dkms',
    ensure => present
  } ->
}
