#!/bin/bash
cd /home/ubuntu/next-js-app
pm2 start npm --name "next-app" -- start
