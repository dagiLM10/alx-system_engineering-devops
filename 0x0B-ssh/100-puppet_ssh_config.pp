#!/usr/bin/env bash
# Using puppet to connect without password

file { '/etc/ssh/ssh_config':
  ensure => present,
}

file_line { 'Turn off passwd auth':
  path	  => '/etc/ssh/ssh_config',
  line	  => 'PasswordAuthentication no',
  match   => '^#PasswordAuthentication',
}

file_line { 'Declare identify file':
  path	  => '/etc/ssh/shh_config',
  line    => 'IdentifyFile ~/.ssh/school',
  match   => '^#IdentityFile',
}
