#!/bin/bash

logfile="auth.log"

if [ ! -f "$logfile" ]; then
    echo "Log file '$logfile' not found!"
    exit 1
fi

cat "$logfile" | grep "session opened for user" | awk '{print $1}' | sort | uniq > unique_ips.txt

num_ips=$(cat unique_ips.txt | wc -l)

echo "Number of unique attackers: $num_ips"
