#!/bin/bash

OUTPUT_FILE="log_report.txt"

echo "==== Log Monitoring Report ====" > $OUTPUT_FILE
echo "Generated on: $(date)" >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

# Count authentication-related events
echo "Total Authentication Events:" >> $OUTPUT_FILE
sudo journalctl | grep -i "pam" | wc -l >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

# Count failures specifically
echo "Authentication Failures:" >> $OUTPUT_FILE
sudo journalctl | grep -Ei "failure|failed" | wc -l >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

# Top repeated failure messages
echo "Top 5 Failure Patterns:" >> $OUTPUT_FILE
sudo journalctl | grep -Ei "failure|failed" | sort | uniq -c | sort -nr | head -5 >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

# Recent auth-related activity
echo "Recent Authentication Activity:" >> $OUTPUT_FILE
sudo journalctl | grep -i "pam" | tail -10 >> $OUTPUT_FILE

echo ""
echo "Report saved to $OUTPUT_FILE"
