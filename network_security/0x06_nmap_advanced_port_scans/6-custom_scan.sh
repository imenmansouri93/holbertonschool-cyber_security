#!/bin/bash
sudo nmap -sX -p $2 $1 -oN custom_scan.txt