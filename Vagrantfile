# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  
  config.vm.define "trusty" do |trusty|
    trusty.vm.box = "ubuntu/trusty64"
    trusty.vm.hostname = "trusty"
    trusty.vm.network "private_network", ip: "192.168.33.10"
    trusty.vm.network "forwarded_port", guest: 4000, host: 4000, auto_correct: true
    trusty.vm.network "forwarded_port", guest: 8080, host: 8080, auto_correct: true

    trusty.vm.provider :virtualbox do |vb|
      vb.gui = false
      vb.memory = 512
      vb.cpus = 1
    end

    # trusty.vm.provision "shell", path: "provision/script.sh"
    trusty.vm.synced_folder "../", "/home/vagrant/share"
  end

  # config.vm.network "private_network", ip: "192.168.33.10"
  # config.vm.network "public_network"

end