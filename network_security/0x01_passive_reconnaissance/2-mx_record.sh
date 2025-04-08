#!/bin/bash
echo "Looking up MX records for: $1"; nslookup -q=mx "$1"