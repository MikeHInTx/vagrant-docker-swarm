#!/bin/bash

# Docker

# Initialize Docker Swarm
echo "[Master - TASK 1] Initialize Docker Swarm"
sudo docker swarm init --advertise-addr 192.168.200.100

echo "[Master - TASK 2] Output Docker Swarm Script"
token=$(sudo docker swarm join-token -q worker)

echo "docker swarm join --token $token 192.168.200.100" > /join-swarm.sh

cat /join-swarm.sh