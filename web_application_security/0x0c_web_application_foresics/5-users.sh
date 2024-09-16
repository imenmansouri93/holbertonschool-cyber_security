#!/bin/bash
grep 'useradd' auth.log | awk -F'name=' '{print $2}' | awk '{print $1}' | awk '!seen[$0]++' | tr '\n' ',' | sed 's/,$//'