# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config| 
config.vm.box = "hashicorp/bionic64"
config.vm.box_version = "1.0.282"
config.vm.hostname = 'ubuntu-django-IS-DSR-VANG'
config.vm.provision "shell", path: "./provision/provisionScript.sh"
config.vm.synced_folder "django/", "/home/vagrant/code"

config.vm.provision :shell, :path => "./provision/vagrant.sh"
config.vm.network "forwarded_port", guest: 80, host: 8080
config.vm.network "forwarded_port", guest: 8000, host: 8081

config.vm.provider 'virtualbox' do |v|
    v.memory = 2500
    v.cpus   = 2
  end

end