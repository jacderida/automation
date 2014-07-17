class base_server::vbox_guest_additions {
  exec { 'install vbox guest additions':
    path    => [ '/usr/bin', '/bin/sh' ],
    command => 'sudo sh /tmp/sh/install_vbox_guest_additions-RHEL.sh'
  }
}
