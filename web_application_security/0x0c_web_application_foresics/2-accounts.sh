#!/bin/bash
LOG_FILE="auth.log"
TEMP_FILE=$(mktemp)
tail -n 1000 "$LOG_FILE" > "$TEMP_FILE"
awk '
/Failed password/ { failed[$11]++ }
/Accepted password/ {
    if (failed[$11] > 0) {
        print $0;
        delete failed[$11];
    }
}
' "$TEMP_FILE" | grep -oP '(?<=for\s)\S+' | sort | uniq
rm "$TEMP_FILE"
