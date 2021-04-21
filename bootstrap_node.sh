#!/bin/bash

# Docker

# Install sshpass to enable scp to work
echo "[Node - TASK 1] Installing sshpass"
apt-get  install -y sshpass 

# Join worker nodes to the Docker swarm
echo "[Node - TASK 2] copying join swarm script from docker-master"
sshpass -p "vagrant" scp -o StrictHostKeyChecking=no vagrant@docker-master.local:/join-swarm.sh /tmp/join-swarm.sh

cat /tmp/join-swarm.sh

# Join worker nodes to the Docker swarm
echo "[Node - TASK 3] Join node to Docker Swarm"
sudo bash /tmp/join-swarm.sh
