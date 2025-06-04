#!/bin/bash
# Stop the specific application rather than all apps
pm2 stop next-js-app 2>/dev/null || true
pm2 delete next-js-app 2>/dev/null || true

echo "Application stopped successfully"
