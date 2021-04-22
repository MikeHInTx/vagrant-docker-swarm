# vagrant-docker-swarm

This repository contains the necessary script files to setup a local Docker swarm using VirtualBox.  It will provision the master and how ever many nodes you would like, joining each node as they are provisioned.

## Features

The script will generate virtual machines using Ubuntu 20.04 and the latest version of Docker Community Edition.

## Requirements

The following resources are required to implement this vagrant script.

These scripts make use of the following resources:
+ [vagrant](https://www.vagrantup.com/)
+ [vagrant-hostmanager plug-in](https://github.com/devopsgroup-io/vagrant-hostmanager)
+ [VirutalBox](https://www.virtualbox.org/)

## Usage

How to run the script:

    git clone https://github.com/MikeHInTx/vagrant-docker-swarm.git
    cd vagrant-docker-swarm
	vagrant up