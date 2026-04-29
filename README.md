Linux Log Monitoring Script
Overview

This project is a Bash-based log analysis tool designed to monitor Linux authentication logs and identify suspicious activity such as failed login attempts.

Features
Counts total failed login attempts
Identifies top IP addresses with repeated failures
Displays recent failed login activity
Generates a summarized report
Technologies Used
Bash scripting
Linux system logs (/var/log/auth.log)
grep, awk, sort, uniq
How to Run
chmod +x log_monitor.sh
./log_monitor.sh

Note: You may need sudo privileges depending on your system.

Example Use Case

This script can help identify potential brute-force login attempts by analyzing authentication logs and highlighting suspicious patterns.

Future Improvements
Real-time monitoring with tail -f
Alerting for high-risk activity
Export results to CSV format
