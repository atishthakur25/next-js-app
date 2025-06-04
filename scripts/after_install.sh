#!/bin/bash
# Navigate to application directory
cd /home/ec2-user/next-js-app

# Ensure proper ownership
sudo chown -R ec2-user:ec2-user .

# Install dependencies
npm install --production=false

# Build the application (moved from start_server.sh)
npm run build

# Log the completion
echo "After install completed successfully"
