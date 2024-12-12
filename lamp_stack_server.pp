# lamp_stack_server.pp

# Install Apache2 package
package { 'apache2':
  ensure => installed,
}

# Install PHP package
package { 'php':
  ensure => installed,
  notify  => Service['apache2'],
  require => [Package['apache2']],
}

# Install PHP MySQL connector
package { 'php-mysql':
  ensure => installed,
  require => [Package['php']],
}

# Ensure Apache2 service is running and enabled
service { 'apache2':
  ensure => running,
  enable => true,
  require => [Package['apache2'], Package['php']],
}

# Manage the phpinfo.php file
file { '/var/www/html/phpinfo.php':
  source => '/home/your_user/puppet_dev/phpinfo.php',
  notify  => Service['apache2'],
  require => [Package['apache2']],
}
