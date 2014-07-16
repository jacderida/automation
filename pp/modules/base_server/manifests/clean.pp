class base_server::clean {
  File { backup => false } 

  package { 'remove gtk2':
    name   => 'gtk2',
    ensure => purged
  }

  package { 'remove libX11':
    name   => 'libX11',
    ensure => purged
  }

  package { 'remove hicolor-icon-theme':
    name   => 'hicolor-icon-theme',
    ensure => purged
  }

  package { 'remove avahi':
    name   => 'avahi',
    ensure => purged
  }

  package { 'remove freetype':
    name   => 'freetype',
    ensure => purged
  }

  package { 'remove bitstream-vera-fonts':
    name   => 'bitstream-vera-fonts',
    ensure => purged
  }

  file { 'Remove sh scripts':
    path    => '/tmp/sh',
    ensure  => absent,
    force   => true
  }

  case $operatingsystem {
    'RedHat', 'CentOS': {
      exec { 'RHEL clean all':
        path    => [ '/usr/bin', '/bin/sh' ],
        command => 'sudo yum -y clean all'
      } ->

      exec { 'RHEL remove traces of mac address step 1':
        path    => [ '/usr/bin', '/bin/sh' ],
        command => 'sudo sed -i /HWADDR/d /etc/sysconfig/network-scripts/ifcfg-eth0'
      } ->

      file { 'RHEL remove traces of mac address step 2':
        path   => '/etc/udev/rules.d/70-persistent-net.rules',
        ensure => absent,
        force  => true
      }
    }
  }
}
