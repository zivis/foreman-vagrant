# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define :foreman do |foreman_config|
    foreman_config.vm.box = "debian"
    foreman_config.vm.box_url = "http://dl.dropbox.com/u/54390273/vagrantboxes/Squeeze64_VirtualBox4.2.4.box"
    foreman_config.vm.network :private_network, ip: "192.168.33.10"
    foreman_config.vm.provision :puppet do |puppet|
      puppet.module_path = "modules"
      puppet.manifests_path = "manifests"
      puppet.manifest_file  = "init.pp"
    end
  end
  
  config.vm.define :dns do |dns_config|
    dns_config.vm.box = "debian"
    dns_config.vm.box_url = "http://dl.dropbox.com/u/54390273/vagrantboxes/Squeeze64_VirtualBox4.2.4.box"
    dns_config.vm.network :private_network, ip: "192.168.33.11"
    dns_config.vm.provision :puppet do |puppet|
      puppet.module_path = "modules"
      puppet.manifests_path = "manifests"
      puppet.manifest_file  = "init_dns.pp"
    end
  end
    
end
