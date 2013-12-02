# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # distro
  #config.vm.customize = ["modifyvm", :id, "--name", "app", "--memory", "512"]
  config.vm.box = "ubuntu13"
  config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/saucy/current/saucy-server-cloudimg-i386-vagrant-disk1.box"

  #"http://files.vagrantup.com/precise64.box"

  # network
  #config.vm.forward_port 22, 2222, :auto => true
  #config.vm.forward_port 80, 4567
  #config.vm.network :hostonly, "33.33.13.37"
  #config.vm.network :bridged
  

  # sharing folders
  #config.vm.share_folder "hosttmp", "/hosttmp", "/tmp"

  # cookbooks
  config.berkshelf.enabled = true

  config.vm.provision :chef_solo do |chef|
    chef.roles_path = "roles"
    chef.data_bags_path = "data_bags"
    chef.add_recipe "git"

    # roles
    chef.add_role "base"
    chef.json = {
      :authorization => {
        :sudo => {
          :users => ["vagrant"],
          :passwordless => true
        }
      }
    }


  end



 end
