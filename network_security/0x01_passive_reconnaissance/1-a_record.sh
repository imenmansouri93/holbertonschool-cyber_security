#!/bin/bash
echo "Looking up IP addresses for: $1"
nslookup "$1" | grep -i 'Address' | grep -v 'addresses' | awk '{print $2}'
