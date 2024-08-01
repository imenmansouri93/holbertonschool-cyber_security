#!/bin/bash
sudo nmap -sM -p http https ssh ftp http https ssh  -vv $1
