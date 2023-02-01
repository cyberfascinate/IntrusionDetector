#!/bin/bash

#echo "IntrusionDetector"

echo "  ___       _                  _             ____       _            _             "
echo " |_ _|_ __ | |_ _ __ _   _ ___(_) ___  _ __ |  _ \  ___| |_ ___  ___| |_ ___  _ __ "
echo "  | || '_ \| __| '__| | | / __| |/ _ \| '_ \| | | |/ _ | __/ _ \/ __| __/ _ \| '__|"
echo "  | || | | | |_| |  | |_| \__ | | (_) | | | | |_| |  __| ||  __| (__| || (_) | |   "
echo " |___|_| |_|\__|_|   \__,_|___|_|\___/|_| |_|____/ \___|\__\___|\___|\__\___/|_|   "
                                                                                   


sudo apt-get update && sudo apt-get install lsof -y

# Function to check system logs for intrusion attempts
check_system_logs() {
    logs=$(cat /var/log/auth.log)
    # Search for keywords indicating intrusion attempts
    if echo "$logs" | grep -Eq 'Failed password|Invalid user'; then
        echo "Intrusion attempt detected in system logs"
    fi
}

# Function to check network traffic for suspicious activities
check_network_traffic() {
    # Get a list of open network connections
    connections=$(lsof -i)
    # Search for connections to specified IP address
    if echo "$connections" | grep -Eq "$1:"; then
        echo "Intrusion attempt detected in network traffic from IP address $1"
    fi
}

# Function to check running processes for suspicious activities
check_processes() {
    # Get a list of running processes
    processes=$(ps aux)
    # Search for processes associated with known malicious programs
    if echo "$processes" | grep -Eq 'malicious_program'; then
        echo "Intrusion attempt detected in running processes"
    fi
}

# Call all functions with specified IP address
if [ $# -eq 0 ]; then
    echo "No IP address specified"
else
    check_system_logs
    check_network_traffic $1
    check_processes
fi
