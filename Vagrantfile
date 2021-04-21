# -*- mode: ruby -*-
# vi: set ft=ruby :

# Docker

#vagrant plugin install vagrant-hostmanager

ENV['VAGRANT_NO_PARALLEL'] = 'yes'

Vagrant.configure(2) do |config|
  config.hostmanager.enabled = true
  config.hostmanager.manage_host = false
  config.hostmanager.manage_guest = true
  config.hostmanager.ignore_private_ip = false
  config.hostmanager.include_offline = false

  config.vm.provision "shell", path: "bootstrap.sh"

  # Docker Master Server
  config.vm.define "docker-master" do |master|
    master.vm.box = "bento/ubuntu-20.04"
    master.vm.hostname = "docker-master.local"
    master.vm.network "private_network", ip: "192.168.200.100"
    master.vm.provider "virtualbox" do |v|
      v.name = "docker-master"
      v.memory = 4096
      v.cpus = 2
    end
    master.vm.provision "shell", path: "bootstrap_master.sh"
  end

NodeCount=2

  # Docker worker nodes
  (1..NodeCount).each do |i|
    config.vm.define "docker-node#{i}" do |node|
      node.vm.box = "bento/ubuntu-20.04"
      node.vm.hostname = "docker-node#{i}.local"
      node.vm.network "private_network", ip: "192.168.200.10#{i}"
      node.vm.provider "virtualbox" do |v|
        v.name = "docker-node#{i}"
        v.memory = 2048
        v.cpus = 2
      end
      node.vm.provision "shell", path: "bootstrap_node.sh"
    end
  end

end
