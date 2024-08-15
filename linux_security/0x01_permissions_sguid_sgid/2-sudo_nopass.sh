#!/bin/bash
echo "$1 ALL=(ALL) NOPASSWD: script.sh" | sudo tee /etc/sudoers.d/$1_script