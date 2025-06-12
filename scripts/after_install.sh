#!/bin/bash

echo "Checking for existing npm install processes..."
pkill -f "npm install" || true

sudo chown -R ubuntu:ubuntu /home/ubuntu/next-js-app

cd /home/ubuntu/next-js-app

# Run npm install if node_modules is missing
if [ ! -d "node_modules" ]; then
  echo "Installing dependencies..."
  npm install
else
  echo "Dependencies already installed"
fi
