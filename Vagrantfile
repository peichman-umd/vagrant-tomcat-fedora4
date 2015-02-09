# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|

  config.vm.box = "chef/centos-7.0"

  # forward 8080 (Tomcat)
  config.vm.network "forwarded_port", guest: 8080, host: 8080

  # location of the Fedora 4 repo
  config.vm.synced_folder "/apps/git/fcrepo4", "/apps/git/fcrepo4"

  config.vm.provision "shell", path: "bootstrap.sh"

end