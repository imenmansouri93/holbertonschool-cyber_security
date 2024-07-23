#!/bin/bash
find / -xdev -type d -perm -002 -print 2>/dev/null
