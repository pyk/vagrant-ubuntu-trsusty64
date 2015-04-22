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

    nodejs.vm.provision "shell", path: "provision/general.root.sh"
    nodejs.vm.provision "shell", path: "provision/general.user.sh", privileged: false
    nodejs.vm.provision "shell", path: "provision/node.root.sh"
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
      vb.cpus = 2
    end

    go.vm.provision "shell", path: "provision/general.root.sh"
    go.vm.provision "shell", path: "provision/general.user.sh", privileged: false
    go.vm.provision "shell", path: "provision/go.root.sh"
    go.vm.synced_folder "../", "/home/vagrant/go/src/github.com/pyk"
  end

  config.vm.define "ubuntu" do |ubuntu|
    ubuntu.vm.box = "ubuntu/trusty64"
    ubuntu.vm.hostname = "ubuntu"
    ubuntu.vm.network "private_network", ip: "192.168.33.10"
    ubuntu.vm.network "forwarded_port", guest: 4000, host: 4000, auto_correct: true
    ubuntu.vm.network "forwarded_port", guest: 8080, host: 8080, auto_correct: true

    ubuntu.vm.provider :virtualbox do |vb|
      vb.gui = false
      vb.memory = 512
      vb.cpus = 2
    end

    ubuntu.vm.provision "shell", path: "provision/general.root.sh"
    ubuntu.vm.provision "shell", path: "provision/general.user.sh", privileged: false
    ubuntu.vm.provision "shell", path: "provision/go.root.sh"
    ubuntu.vm.provision "shell", path: "provision/node.root.sh"
    ubuntu.vm.synced_folder "../", "/home/vagrant/go/src/github.com/pyk"
  end

  config.vm.define "packagepaths" do |packagepaths|
    packagepaths.vm.box = "ubuntu/trusty64"
    packagepaths.vm.hostname = "packagepaths"
    packagepaths.vm.network "private_network", ip: "192.168.33.10"
    packagepaths.vm.network "forwarded_port", guest: 4000, host: 4000, auto_correct: true
    packagepaths.vm.network "forwarded_port", guest: 8080, host: 8080, auto_correct: true

    packagepaths.vm.provider :virtualbox do |vb|
      vb.gui = false
      vb.memory = 512
      vb.cpus = 2
    end

    packagepaths.vm.provision "shell", path: "provision/general.root.sh"
    packagepaths.vm.provision "shell", path: "provision/general.user.sh", privileged: false
    packagepaths.vm.provision "shell", path: "provision/go.root.sh"
    packagepaths.vm.provision "shell", path: "provision/postgresql.root.sh"
    packagepaths.vm.synced_folder "../", "/home/vagrant/go/src/github.com/pyk"
  end

  config.vm.define "research" do |research|
    research.vm.box = "ubuntu/trusty64"
    research.vm.hostname = "research"
    research.vm.network "private_network", ip: "192.168.33.10"
    research.vm.network "forwarded_port", guest: 4000, host: 4000, auto_correct: true
    research.vm.network "forwarded_port", guest: 8080, host: 8080, auto_correct: true

    research.vm.provider :virtualbox do |vb|
      vb.gui = false
      vb.memory = 512
      vb.cpus = 2
    end

    research.vm.provision "shell", path: "provision/general.root.sh"
    research.vm.provision "shell", path: "provision/general.user.sh", privileged: false
    research.vm.provision "shell", path: "provision/go.root.sh"
    research.vm.provision "shell", path: "provision/postgresql.root.sh"
    research.vm.synced_folder "../", "/home/vagrant/go/src/github.com/pyk"
  end
end