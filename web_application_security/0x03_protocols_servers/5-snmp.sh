#!/bin/bash
find / -type f -name '*snmp*.conf' -exec grep -i 'public' {} \; 2>/dev/null