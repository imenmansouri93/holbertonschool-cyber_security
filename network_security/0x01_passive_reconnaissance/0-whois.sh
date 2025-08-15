#!/bin/bash
whois -h whois.markmonitor.com "$1" | awk -F': ' '/^(Registrant|Admin|Tech) (Organization|State\/Province|Country|Email)/ {print $1","$2}' > "$1".csv
