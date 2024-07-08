#!/bin/bash
ps -u "$1" -o pid,comm,vsz,rss --no-headers | awk '$3 > 0 && $4 > 0'