#!/bin/bash
echo "$1 ALL=(ALL) NOPASSWD: Security" | sudo tee /etc/sudoers.d/$1_script1