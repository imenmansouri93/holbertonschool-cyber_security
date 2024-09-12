#!/bin/bash
sudo grep -i -E 'sshd|ftp|httpd|nginx' auth.log | awk '{print $6}' | sort | uniq