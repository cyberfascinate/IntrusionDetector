# IntrusionDetector

IntrusionDetector is a bash script that monitors system logs, network traffic, and processes for signs of intrusion attempts. It is designed to help detect and prevent unauthorized access to a system. IntrusionDetector searches for specific keywords in the system logs that indicate failed login attempts, connections to a specified IP address in network traffic, and processes associated with known malicious programs. When an intrusion attempt is detected, the script outputs a message indicating the type of intrusion and provides information that can be used to further investigate the incident.

# Installation

1. Clone the repository containing the script to your local machine. You can do this by running the following command in your terminal:
    - $ git clone https://github.com/cyberfascinate/IntrusionDetector.git
2. Change into the directory containing the script:
    - $ cd IntrusionDetector
3. Make the script executable:
    - $ chmod +x IntrusionDetector.sh
4. Run the script:
    - $ ./IntrusionDetector.sh <ip_address>
    
# Use Case

1.  It is ideal for system administrators and security professionals who are responsible for monitoring and maintaining the security of a system. It can be used to regularly check for signs of intrusion attempts, detect potential security threats, and provide early warning of any suspicious activities. The script can be scheduled to run automatically at regular intervals, allowing administrators to monitor the system for intrusion attempts even when they are not actively monitoring it.

2. The use can greatly improve the overall security of a system by providing a proactive approach to detecting and preventing unauthorized access. The information provided by the script can be used to quickly identify the source of an intrusion attempt and take the appropriate measures to prevent future incidents. Additionally, the script can be customized to fit specific security needs by modifying the keywords and IP addresses used in the search criteria.

# Disclaimer

It is important to note that this script, IntrusionDetector, should only be used for legitimate and lawful purposes. Any unauthorized or illegal use of this script is strictly prohibited and may result in legal consequences. Please ensure that you have proper authorization and a valid reason for using this script before proceeding with its installation and usage.
