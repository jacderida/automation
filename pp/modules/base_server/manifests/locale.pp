class base_server::locale {
  Exec { path => ['/usr/local/sbin', '/usr/sbin', '/sbin', '/usr/local/bin', '/usr/bin', '/bin'] }

  case $operatingsystem {
    'RedHat', 'CentOS': {
      exec { 'install cp1252 locale':
        command => 'sudo localedef -f CP1252 -i en_GB en_GB.cp1252',
        cwd     => '/usr/share/i18n/locales'
      } ->

      exec { 'update i18n config':
        command => 'sed -i \'s#LANG="en_GB"#LANG="en_GB.cp1252"#g\' /etc/sysconfig/i18n'
      }
    }
  }
}
