#!/bin/bash
sudo nmap -sM -p http https ssh ftp telnet ssh  -vv $1
