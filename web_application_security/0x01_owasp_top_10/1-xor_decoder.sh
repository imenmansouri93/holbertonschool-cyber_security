#!/bin/bash
echo "$decoded_input" | awk -v key=$KEY '{for(i=1;i<=length;i++) printf "%c", and(ord(substr($0,i,1)) ^ key, 255)}'