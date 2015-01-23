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

  config.vm.define "go" do |go|
    go.vm.box = "ubuntu/trusty64"
    go.vm.hostname = "go"
    go.vm.network "private_network", ip: "192.168.33.10"
    go.vm.network "forwarded_port", guest: 4000, host: 4000, auto_correct: true
    go.vm.network "forwarded_port", guest: 8080, host: 8080, auto_correct: true

    go.vm.provider :virtualbox do |vb|
      vb.gui = false
      vb.memory = 512
      vb.cpus = 1
    end

    go.vm.provision "shell", path: "provision/go.sh"
    go.vm.synced_folder "../", "/home/vagrant/go/src/github.com/pyk"
  end

  config.vm.define "mailable" do |mailable|
    mailable.vm.box = "ubuntu/trusty64"
    mailable.vm.hostname = "mailable"
    mailable.vm.network "private_network", ip: "192.168.33.10"
    mailable.vm.network "forwarded_port", guest: 4000, host: 4000, auto_correct: true
    mailable.vm.network "forwarded_port", guest: 8080, host: 8080, auto_correct: true

    mailable.vm.provider :virtualbox do |vb|
      vb.gui = false
      vb.memory = 512
      vb.cpus = 1
    end

    mailable.vm.provision "shell", path: "provision/mailable.sh"
    mailable.vm.synced_folder "../", "/home/vagrant/go/src/github.com/pyk"
  end
end