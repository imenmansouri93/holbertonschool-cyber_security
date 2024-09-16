#!/bin/bash
grep -iE 'iptables|nft|firewalld|ufw' auth.log | wc -l