# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  
  # distro
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  
  # cookbooks
  config.berkshelf.enabled = true

  config.vm.provision :chef_solo do |chef|
    chef.roles_path = "roles"
    chef.data_bags_path = "data_bags"
    chef.add_recipe "git"

  end
end
