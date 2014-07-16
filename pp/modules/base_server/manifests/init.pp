class base_server {
  class { 'base_server::authorize_ssh_keys': } ->
  class { 'base_server::packages': } ->
  class { 'base_server::vbox_guest_additions': } ->
  class { 'base_server::clean': } ->
  Class['base_server']
}
