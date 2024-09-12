#!/bin/bash
LOG_FILE="auth.log"
SERVICES="sshd|ftp|httpd|nginx"

# Output header
echo "Scanning $auth.log for services: $SERVICES"
echo
grep -i -E "$SERVICES" $"auth.log" | awk '{print $6}' | sort | uniq -c | sort -nr

# Display the count of unique messages for each service
echo
echo "Summary of services found:"
for SERVICE in sshd ftp httpd nginx; do
    echo "$SERVICE:"
    grep -i "$SERVICE" "$LOG_FILE" | awk '{print $6}' | sort | uniq -c | sort -nr
    echo
done
