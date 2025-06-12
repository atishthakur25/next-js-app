#!/bin/bash

echo "Checking for existing npm install processes..."
pkill -f "npm install" || true

cd /home/ubuntu/next-js-app

# Fix permission issues
sudo chown -R ubuntu:ubuntu .

# Optional: clean install if builds were cached
rm -rf node_modules .next

# Run npm install if node_modules is missing
if [ ! -d "node_modules" ]; then
    echo "Installing dependencies..."
    npm install
else
    echo "Dependencies already installed"
fi

# Build the Next.js application
echo "Building the application..."
npm run build
