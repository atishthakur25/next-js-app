#!/bin/bash
# Check the status of the Next.js application
echo "===== Application Status ====="
pm2 list

echo "===== Node Version ====="
node -v

echo "===== NPM Version ====="
npm -v

echo "===== Application Directory ====="
ls -la /home/ec2-user/next-js-app

echo "===== Current Running Processes ====="
ps aux | grep node
