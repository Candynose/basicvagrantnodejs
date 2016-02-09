# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure(2) do |config|

  config.vm.box = "debian/jessie64"
  config.vm.provider "virtualbox"
  config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.synced_folder "webserver", "/shared", create: true
  config.vm.provision "shell", path: "provisioner.sh"

end
