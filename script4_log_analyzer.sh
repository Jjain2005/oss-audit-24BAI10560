#!/bin/bash
# Script 4: Log File Analyzer
# Author: Jinam Jain | Reg No: 24BAI10560
# Course: Open Source Software | Chosen Software: Python

LOGFILE="/var/log/messages"
KEYWORD="error"
COUNT=0

# Check if log file exists, retry with different file if not
if [ ! -f "$LOGFILE" ]; then
    echo "File not found: $LOGFILE"
    LOGFILE="/var/log/cron"
    echo "Trying: $LOGFILE"
fi

# Check again after retry
if [ ! -f "$LOGFILE" ]; then
    echo "Error: No log file found. Exiting."
    exit 1
fi

# While read loop to go through file line by line
while IFS= read -r LINE; do
    # If statement to check each line for keyword (case insensitive)
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo ""
echo "Last 3 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" 2>/dev/null | tail -3
