# Initiate minimal environement with puppet
exec { 'apt-update':
  command => '/usr/bin/apt-get update'
}

exec { 'apt-upgrade':
  command => '/usr/bin/apt-get dist-upgrade'
}


# Exim represents an attack surface
package { 'exim4':
    ensure => purged,
}

package { 'exim4-base':
    ensure => purged,
}

package { 'exim4-config':
    ensure => purged,
}

package { 'exim4-daemon-light':
    ensure => purged,
}


# Configure unattended upgrades


# Install sudo
package { 'sudo':
  require => Exec['apt-upgrade'],
  ensure => installed,
}

exec { 'disable-ipv6':
  command => '/bin/echo net.ipv6.conf.all.disable_ipv6=1 > /etc/sysctl.d/disableipv6.conf'
}
