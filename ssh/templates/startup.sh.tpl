#!/bin/bash
set -e

# Copy public keys
echo "${public_key}" > /home/ubuntu/.ssh/authorized_keys

# Install mysql
sudo apt-get update
sudo apt-get install -y mysql-client
