#!/bin/bash
cd /home/ec2-user/next-js-app
npm run build
pm2 start npm --name "next-app" -- start
