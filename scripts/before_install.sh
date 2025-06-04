#!/bin/bash
# Update npm and install latest nodejs
curl -sL https://rpm.nodesource.com/setup_18.x | sudo -E bash -
sudo yum install -y nodejs
# Install global dependencies
sudo npm install -g pm2
# Clean up old deployment if exists
cd /home/ec2-user
rm -rf next-js-app
