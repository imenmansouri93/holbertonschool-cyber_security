#!/bin/bash

# Get the distribution ID
id=$(lsb_release -i | cut -f 2-)
echo "$id"

# Check the number of lines in the script
desired_lines=2
actual_lines=$(wc -l < "$0")
if [ "$actual_lines" -eq "$desired_lines" ]; then
    echo "Desired number of lines: $desired_lines"
    echo "Actual number of lines: $actual_lines"
else
    echo "Desired number of lines: $desired_lines"
    echo "Actual number of lines: $actual_lines"
fi

# Print the last 5 characters of the file
file_content=$(cat "$0")
last_five_chars="${file_content: -5}"
echo "Last 5 characters of the file: \"$last_five_chars\""
