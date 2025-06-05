#!/bin/bash
# Script to check if the AWS CodeDeploy agent is running
# and provide commands to restart it if needed

echo "Checking CodeDeploy agent status..."

# Check if the service exists and get its status
if systemctl list-unit-files | grep -q codedeploy-agent; then
    echo "Found CodeDeploy agent service."
    
    # Check if the service is running
    if systemctl is-active --quiet codedeploy-agent; then
        echo "CodeDeploy agent is RUNNING."
        echo "Service details:"
        systemctl status codedeploy-agent
    else
        echo "CodeDeploy agent is NOT RUNNING."
        echo "To start the service, use:"
        echo "sudo systemctl start codedeploy-agent"
        echo "To enable it to start on boot:"
        echo "sudo systemctl enable codedeploy-agent"
        echo "Full service status:"
        systemctl status codedeploy-agent
    fi
else
    # Alternative check for Amazon Linux/older systems
    if service --status-all 2>&1 | grep -q codedeploy-agent; then
        echo "Found CodeDeploy agent service (legacy system)."
        
        # Check service status
        STATUS=$(service codedeploy-agent status)
        echo "$STATUS"
        
        if echo "$STATUS" | grep -q "running"; then
            echo "CodeDeploy agent is RUNNING."
        else
            echo "CodeDeploy agent is NOT RUNNING."
            echo "To start the service, use:"
            echo "sudo service codedeploy-agent start"
            echo "To check if it's installed properly:"
            echo "sudo service codedeploy-agent status"
        fi
    else
        echo "CodeDeploy agent service not found."
        echo "The agent may not be installed."
        echo "To install the agent on Amazon Linux, run:"
        echo "sudo yum update -y"
        echo "sudo yum install -y ruby"
        echo "sudo yum install -y wget"
        echo "cd /home/ec2-user"
        echo "wget https://aws-codedeploy-us-east-1.s3.amazonaws.com/latest/install"
        echo "chmod +x ./install"
        echo "sudo ./install auto"
        echo "To verify installation: sudo service codedeploy-agent status"
    fi
fi

# Check the log file for recent activity
echo -e "\nChecking CodeDeploy agent log file..."
if [ -f /var/log/aws/codedeploy-agent/codedeploy-agent.log ]; then
    echo "Last 10 log entries:"
    tail -n 10 /var/log/aws/codedeploy-agent/codedeploy-agent.log
else
    echo "Log file not found at /var/log/aws/codedeploy-agent/codedeploy-agent.log"
fi
