# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.define "research" do |research|
    research.vm.box = "ubuntu/trusty64"
    research.vm.hostname = "research"
    research.vm.network "private_network", ip: "192.168.33.10"
    (0..5).each do |i|
      research.vm.network "forwarded_port", guest: (4000 + i), host: (4000 + i), auto_correct: true
    end

    research.vm.provider :virtualbox do |vb|
      vb.gui = false
      vb.memory = 512
      vb.cpus = 2
    end

    research.vm.provision "shell", path: "provision/general.root.sh"
    research.vm.provision "shell", path: "provision/general.user.sh", privileged: false
    research.vm.provision "shell", path: "provision/go.root.sh"
    research.vm.provision "shell", path: "provision/postgresql.root.sh"
    research.vm.provision "shell", path: "provision/node.root.sh"
    research.vm.synced_folder "../", "/home/vagrant/go/src/github.com/pyk"
  end
end