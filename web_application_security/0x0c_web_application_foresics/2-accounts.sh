#!/bin/bash
tail -n 1000 "auth.log" | awk '/Failed password/ {failed[$11]++} /Accepted password/ {if (failed[$11]>0) {print $0; delete failed[$11]}}' | grep -oP '(?<=for\s)\S+' | sort | uniq
