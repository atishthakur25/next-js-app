#!/bin/bash
cd /home/ec2-user
pm2 stop all || true
rm -rf your-app-folder
