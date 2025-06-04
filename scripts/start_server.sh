#!/bin/bash
cd /home/ec2-user/your-app-folder
npm run build
pm2 start ecosystem.config.js || pm2 restart ecosystem.config.js
