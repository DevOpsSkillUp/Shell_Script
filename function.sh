#!/bin/bash

# Check if the script is run with root privileges
USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run this script with root privilege"
    exit 1 # failure is other than 0
fi

# Log file to store the process details
LOG_FILE="/var/log/install.log"
touch $LOG_FILE
# Function to log messages
log_message() {
    echo "$(date): $1" >> $LOG_FILE
}

# Validation function to check the success of the last command
VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo "ERROR:: Installing $2 failed" | tee -a $LOG_FILE
        exit 1
    else
        echo "Installing $2 SUCCESS" | tee -a $LOG_FILE
    fi
}

# Start logging the script execution
log_message "Script started"

# Install MySQL
apt install mysql -y
VALIDATE $? "MySQL"

# Install Nginx
apt install nginx -y
VALIDATE $? "Nginx"

# Install Python3
apt install python3 -y
VALIDATE $? "python3"

# Final log entry indicating script completion
log_message "Script completed successfully"
