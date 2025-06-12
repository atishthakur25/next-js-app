#!/bin/bash
cd /home/ubuntu/next-js-app

# Check if pm2 process exists
# if pm2 describe next-app > /dev/null; then
#   pm2 restart next-app
# else
#   pm2 start npm --name "next-app" -- start
# fi

# Stop any running instance first
pm2 stop next-app || true
pm2 delete next-app || true

# Start Next.js app in production using PM2
pm2 start npm --name "next-app" -- start