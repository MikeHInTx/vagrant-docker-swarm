# vagrant-docker-swarm

This repository contains the necessary script files to setup a local Docker swarm using VirtualBox.  It will provision the master and how ever many nodes you would like, joining each node as they are provisioned.

## Features

The script will generate virtual machines using Ubuntu 20.04 and the latest version of Docker Community Edition.

## Resources

These scripts make use of the following resources:
+ [vagrant](https://www.vagrantup.com/)
+ [vagrant-hostmanager plug-in](https://github.com/devopsgroup-io/vagrant-hostmanager)
+ [VirutalBox](https://www.virtualbox.org/)
+ [Docker](https://www.docker.com/)

## Usage

How to run the script initially:
```
    git clone https://github.com/MikeHInTx/vagrant-docker-swarm.git
    cd vagrant-docker-swarm
    vagrant up
```
To add a node:
Change value of *NodeCount* in *VagrantFile*
```
    vagrant up
```
To destroy cluster
```
    vagrant destroy -f
```

### Note
*This is not for production use. It is designed for development, testing, and training purposes.*