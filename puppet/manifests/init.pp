

$mysql_password = "vagrant"


# create a new run stage to ensure certain modules are included first
stage { 'pre':
  before => Stage['main']
}

# add the baseconfig module to the new 'pre' run stage
class { 'baseconfig':
  stage => 'pre'
}

# set defaults for file ownership/permissions
File {
  owner => 'root',
  group => 'root',
  mode  => '0644',
}

include baseconfig, apache, php, apache_vhosts

include '::mysql::server'

mysql::db { 'wordpress':
      user     => 'wordpress',
      password => 'wordpress',
      host     => 'localhost',
      grant    => ['ALL'],
    }