#!/bin/bash
KEY_FILE="rsa_key"
ssh-keygen -t rsa -b 4096 -f "$KEY_FILE"