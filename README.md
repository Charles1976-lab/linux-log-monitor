Linux Log Monitoring & Analysis Tool

 Overview

This project is a Bash-based log analysis tool designed to monitor Linux authentication activity and identify potential security concerns such as failed login attempts.

Developed and tested on Linux Mint, the script leverages `journalctl` to analyze system logs and generate a structured report.

Key Features
- Analyzes system authentication logs using `journalctl`
- Detects failed login attempts and authentication activity
- Identifies recurring failure patterns
- Generates a structured report for review
- Designed to adapt to systems using `systemd-journald`

Technologies Used
-Bash scripting
-Linux system logs (`journalctl`)
-grep, awk, sort, uniq

How It Works

The script:
1. Retrieves system logs using `journalctl`
2. Filters authentication-related events (PAM, failures)
3. Aggregates and summarizes key patterns
4. Outputs a readable report

Example Output

See `sample_output.txt` for a full example.

How to Run

```bash
chmod +x log_monitor.sh
./log_monitor.sh
```

> Note: Script uses `sudo` internally to access system logs.

Use Case
This tool demonstrates basic log analysis techniques used in security operations, including:
-Identifying authentication failures
-Recognizing abnormal patterns
-Supporting incident investigation workflows

Author

Charles Pippins
Aspiring Cybersecurity Professional
