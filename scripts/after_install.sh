#!/bin/bash
cd /home/ubuntu/next-js-app
if [ -d "node_modules" ]; then
  echo "Dependencies already installed"
else
  echo "Installing dependencies..."
  npm install
fi
