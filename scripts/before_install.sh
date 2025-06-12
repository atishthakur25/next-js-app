#!/bin/bash
cd /home/ubuntu/next-js-app
pm2 stop all || true
#!/bin/bash

# Stop running processes
pm2 stop all || true

# Remove existing app files to avoid conflict
rm -rf /home/ubuntu/next-js-app/*
