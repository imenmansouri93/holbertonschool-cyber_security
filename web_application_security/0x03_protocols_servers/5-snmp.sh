#!/bin/bash
find / -type f \( -name '*snmp*.conf' -o -name '*snmp*.d' \) -exec grep -i 'public' {} \; 2>/dev/null