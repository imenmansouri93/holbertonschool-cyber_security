#!/bin/bash
< /dev/urandom tr -dc '[:alnum:]' | fold -w ${1:-16} | head -1