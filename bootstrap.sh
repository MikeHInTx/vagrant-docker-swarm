#!/bin/bash

# Docker

# update OS
echo "[Bootstrap - TASK 1] Update OS"
sudo apt-get update

echo "[Bootstrap - TASK 2] Upgrade OS"
#sudo apt-get upgrade -y

# Update hosts file
# echo "[bootstrap - task 3] update /etc/hosts file"
# cat >>/etc/hosts<<eof
# 192.168.200.100 docker-master.local docker-master
# 192.168.200.101 docker-node1.local docker-node1
# 192.168.200.102 docker-node2.local docker_node2
# 192.168.200.103 docker-node3.local docker-node3
# eof

# Disable swap
echo "[Bootstrap - TASK 3] Disable and turn off SWAP"
sed -i '/swap/d' /etc/fstab
swapoff -a

# Install snap core and Docker
echo "[Bootstrap - TASK 4] Install Docker"
sudo snap install core
sudo snap install docker

# Setup docker security
echo "[Bootstrap - TASK 5] Set Docker Permissions"
sudo addgroup --system docker
sudo adduser $USER docker
newgrp docker
sudo snap disable docker
sudo snap enable docker

# Set Root password
echo "[Bootstrap - TASK 6] Set root password"
echo -e "vagrant\nvagrant" | passwd root