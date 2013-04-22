if ! $::osfamily {
  case $::operatingsystem {
    'RedHat', 'Fedora', 'CentOS', 'Scientific', 'SLC', 'Ascendos', 'CloudLinux', 'PSBM', 'OracleLinux', 'OVS', 'OEL': {
      $osfamily = 'RedHat'
    }
    'ubuntu', 'debian': {
      $osfamily = 'Debian'
    }
    'SLES', 'SLED', 'OpenSuSE', 'SuSE': {
      $osfamily = 'Suse'
    }
    'Solaris', 'Nexenta': {
      $osfamily = 'Solaris'
    }
    default: {
      $osfamily = $::operatingsystem
    }
  }
}

if ! $::lsbdistcodename {
  case $::operatingsystem {
    'Debian' : {
      case $::operatingsystemrelease {
        '6.0.6' : {
	  $lsbdistcodename = 'squeeze'
	}
      }
    } 
  }
}

exec { "apt-get update":
    command => "/usr/bin/apt-get update"
}
if $osfamily == 'Debian' {
    Package { require => Exec['apt-get update'] }
  }


include foreman
include foreman_proxy
include puppet
include puppet::server
