# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  
  config.vm.define "nodejs" do |nodejs|
    nodejs.vm.box = "ubuntu/trusty64"
    nodejs.vm.hostname = "nodejs"
    nodejs.vm.network "private_network", ip: "192.168.33.10"
    nodejs.vm.network "forwarded_port", guest: 4000, host: 4000, auto_correct: true
    nodejs.vm.network "forwarded_port", guest: 8080, host: 8080, auto_correct: true

    nodejs.vm.provider :virtualbox do |vb|
      vb.gui = false
      vb.memory = 512
      vb.cpus = 1
    end

    nodejs.vm.provision "shell", path: "provision/nodejs.sh"
    nodejs.vm.synced_folder "../", "/home/vagrant/share"
  end

  # config.vm.network "private_network", ip: "192.168.33.10"
  # config.vm.network "public_network"

end