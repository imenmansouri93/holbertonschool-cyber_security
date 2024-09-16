#!/bin/bash
grep 'useradd' auth.log | awk -F'name=' '{print $2}' | awk '{printf $1}' | uniq | sort | paste -sd, -