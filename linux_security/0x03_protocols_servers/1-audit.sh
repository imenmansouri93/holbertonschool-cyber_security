#!/bin/bash
sshd -T > /tmp/defaults | grep -Ei '^[a-z]' /etc/ssh/sshd_config | while read l; do [[ "$(grep -i "^${l%% *} " /tmp/defaults)" != "$l" ]] && echo "$l"; done
