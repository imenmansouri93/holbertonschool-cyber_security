#!/bin/bash
grep -E '^(PermitRootLogin|PasswordAuthentication|ChallengeResponseAuthentication|UsePAM|AllowTcpForwarding|X11Forwarding)' /etc/ssh/sshd_config | grep -Ev '^(#|$)' | grep -vE 'PermitRootLogin no|PasswordAuthentication no|ChallengeResponseAuthentication no|UsePAM yes|AllowTcpForwarding no|X11Forwarding no'
