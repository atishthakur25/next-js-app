#!/bin/bash
cd /home/ubuntu/next-js-app

# Remove all existing files and hidden files/folders in the directory
rm -rf /home/ubuntu/next-js-app/*
rm -rf /home/ubuntu/next-js-app/.* 2>/dev/null || true
