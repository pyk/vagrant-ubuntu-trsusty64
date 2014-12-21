# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  
  config.vm.define "trusty" do |trusty|
    trusty.vm.box = "ubuntu/trusty64"
    trusty.vm.hostname = "trusty"
    
    trusty.vm.provider :virtualbox do |vb|
      vb.gui = false
      vb.memory = 1024
      vb.cpus = 1
    end

    # trusty.vm.provision "shell", path: "provision/script.sh"
    trusty.vm.synced_folder "../", "/home/vagrant/share"
  end

  # config.vm.network "forwarded_port", guest: 80, host: 8080
  # config.vm.network "private_network", ip: "192.168.33.10"
  # config.vm.network "public_network"

end