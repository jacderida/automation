class profile::jira_server {
  $installdir = '/opt/jira'
  $version = '6.2.7'
  $user = 'jira'
  $group = 'jira'
  $dbtype = 'postgresql'
  $dbname = 'jira'
  $dbuser = 'jiradbuser'
  $dbpassword = 'b7>*£9u?6BqR7Pw'
  $dbserver = '192.168.56.103'
  $dbport = '5432'
  $javahome = '/usr/lib/jvm/java-openjdk'
  $port = 8081

  firewall { '120 allow http and https access on 8081':
    port   => $port,
    proto  => tcp,
    action => accept
  } ->

  file { $installdir:
    ensure => 'directory'
  } ->

  class { 'jira':
    version    => $version,
    installdir => $installdir,
    user       => $user,
    group      => $group,
    db         => $dbtype,
    dbuser     => $dbuser,
    dbpassword => $dbpassword,
    dbserver   => $dbserver,
    dbname     => $dbname,
    dbport     => $dbport,
    javahome   => $javahome,
    tomcatPort => $port
  }
}
