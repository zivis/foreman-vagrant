#foreman_installer::yaml_to_class { ['foreman', 'foreman_proxy', 'puppet', 'puppet::server']: }
include foreman
include foreman_proxy
include puppet
include puppet::server
