#!/bin/sh
set -e

vagrant box add precise64 http://files.vagrantup.com/precise64.box
bundle install
berks install
vagrant plugin install vagrant-berkshelf
vagrant reload
vagrant provision
