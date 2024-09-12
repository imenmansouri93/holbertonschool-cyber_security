#!/bin/bash


# Define the log file path from the argument
LOG_FILE="$1"

# Analyze the last 1000 lines of the log
last_1000_lines=$(tail -n 1000 "$LOG_FILE")

echo "Checking for compromised accounts based on failed and successful logins..."

# Find failed login attempts
failed_attempts=$(echo "$last_1000_lines" | grep "Failed password for" | awk '{print $(NF-5)}')

# Debug: Show failed attempts
echo "Failed login attempts:"
echo "$failed_attempts"
echo

# For each user with failed attempts, check if there's a corresponding success
compromised_found=0
for user in $(echo "$failed_attempts" | sort | uniq); do
  # Count failed attempts for this user
  failed_count=$(echo "$failed_attempts" | grep -c "$user")

  # If the user has more than 2 failed attempts, check for a successful login
  if [ "$failed_count" -ge 3 ]; then
    successful_login=$(echo "$last_1000_lines" | grep "Accepted password for $user")
    
    # Debug: Show successful login for the user
    if [ -n "$successful_login" ]; then
      echo "Potentially compromised account: $user"
      echo "Failed attempts: $failed_count"
      echo "Last successful login:"
      echo "$successful_login"
      compromised_found=1
    fi
  fi
done

if [ "$compromised_found" -eq 0 ]; then
  echo "No compromised accounts found."
fi
