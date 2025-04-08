#!/bin/bash
echo "Looking up MX records for: $1"; nslookup -type=mx "$1"