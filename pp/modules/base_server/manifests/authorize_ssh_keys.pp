class base_server::authorize_ssh_keys {
  ssh_authorized_key { 'vagrant_authorized_key':
    ensure => present,
    key    => "AAAAB3NzaC1yc2EAAAABIwAAAQEA6NF8iallvQVp22WDkTkyrtvp9eWW6A8YVr+kz4TjGYe7gHzIw+niNltGEFHzD8+v1I2YJ6oXevct1YeS0o9HZyN1Q9qgCgzUFtdOKLv6IedplqoPkcmF0aYet2PkEDo3MlTBckFXPITAMzF8dJSIFo9D8HfdOV0IAdx4O7PtixWKn5y2hMNG0zQPyUecp4pzC6kivAIhyfHilFR61RGL+GPXQ2MWZWFYbAGjyiYJnAmCP3NOTd0jMZEnDkbUvxhMmBYSdETk1rRgm+R4LOzFUGaHqHDLKLX+FIPKcF96hrucXzcWyLbIbEgE98OHlnVYCzRdK8jlqm8tehUc9c9WhQ==",
    target => "/home/vagrant/.ssh/authorized_keys",
    type   => "ssh-rsa",
    user   => "vagrant"
  } ->

  ssh_authorized_key { 'mxroot_authorized_key':
    ensure => present,
    key    => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCuYe5YpipgIvxki2oH5pXWkNh/LtUkdfkT3zWw4GNhQtrVj+jr/JR7/NUFCc5efHWv/xycYRELh7++zul5Xjjh5/WbGrSPkShaB3cxn/+3UkhkkcAuCw8MDk2VLMPYTW/1aY4OM6AzXYQ1DLVr6DoYeijIQ7YRPHfX6sK6ZjVoEEaoG8VY8oHNHAn19IzHHrJjEFpSDTV4qHGH2PZSEDB9eZRBN8Y/JvQ3eftJBSzeekzyJAJEJ4Vt8Cfu7RoRkJ0PYkiRV9HevE8uU95VzSs0ZNtxAPy+ZOllb7nfDs0O2fRS68eJqnn8D5oiKP+f5be4qDOdwjxZJL27wC7cjgEH",
    target => "/home/mxroot/.ssh/authorized_keys",
    type   => "ssh-rsa",
    user   => "mxroot"
  }
}
