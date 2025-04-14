#!/bin/bash
sshd -T > /tmp/defaults; grep -Eiv '^\s*#|^\s*$' /etc/ssh/sshd_config | while read l; do [[ "$(grep -i "^${l%% *} " /tmp/defaults)" != "$l" ]] && cat <<< "$l"; done
