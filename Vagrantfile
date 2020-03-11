# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config| 
config.vm.box = "hashicorp/bionic64"
config.vm.box_version = "1.0.282"
config.vm.hostname = 'ubuntu-django-IS-DSR-VANG'
config.vm.provision "shell", path: "./provision/provisionScript.sh"
config.vm.synced_folder "src/", "/home/vagrant/code"
config.vm.network "forwarded_port", guest: 80, host: 8080
#config.vm.network "public_network", ip: "192.168.0.17"

config.vm.provider 'virtualbox' do |v|
    v.memory = 2500
    v.cpus   = 2
  end

end