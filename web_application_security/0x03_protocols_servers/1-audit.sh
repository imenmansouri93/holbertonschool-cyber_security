#!/bin/bash
grep -Ev '^PermitRootLogin|^PasswordAuthentication|^ChallengeResponseAuthentication|^UsePAM|^AllowTcpForwarding|^X11Forwarding' /etc/ssh/sshd_config 