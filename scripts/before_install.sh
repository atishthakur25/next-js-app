#!/bin/bash
sudo yum install -y nodejs npm
sudo npm install -g pm2
cd /home/ec2-user
rm -rf next-js-app
