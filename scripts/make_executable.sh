#!/bin/bash

# This script ensures all deployment scripts are executable
# Run this locally before pushing to CodePipeline

chmod +x scripts/*.sh
echo "All scripts in scripts/ directory are now executable."
