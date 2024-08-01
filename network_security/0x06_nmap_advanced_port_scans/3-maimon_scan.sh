#!/bin/bash
sudo nmap -sM -p http https ssh ftp -vv $1
