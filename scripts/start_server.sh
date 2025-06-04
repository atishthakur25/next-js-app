#!/bin/bash
# Navigate to application directory
cd /home/ec2-user/next-js-app

# Stop any existing instances
pm2 stop next-js-app 2>/dev/null || true
pm2 delete next-js-app 2>/dev/null || true

# Start the application
pm2 start npm --name "next-js-app" -- start

# Save PM2 configuration to survive reboots
pm2 save

# Display status for confirmation
pm2 status

echo "Application started successfully"
