#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Jinam Jain | Reg No: 24BAI10560
# Course: Open Source Software | Chosen Software: Python

# Array of important system directories to check
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

# For loop to go through each directory
for DIR in "${DIRS[@]}"; do

    # Check if directory exists using -d flag
    if [ -d "$DIR" ]; then
        # Get permissions, owner and group using ls -ld and awk
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        # Get human readable size using du -sh
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi

done

# Check Python specific directory
echo ""
echo "Python Directory Check"
echo "----------------------"
if [ -e "/usr/bin/python3" ]; then
    PERMS=$(ls -la /usr/bin/python3 | awk '{print $1, $3, $4}')
    echo "/usr/bin/python3 => $PERMS"
else
    echo "/usr/bin/python3 not found"
fi
