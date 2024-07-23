#!/bin/bash
find / -xdev -type d -perm -002 -exec chmod 755 {} \; 2>/dev/null