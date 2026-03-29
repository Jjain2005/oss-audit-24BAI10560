#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Jinam Jain | Reg No: 24BAI10560
# Course: Open Source Software | Chosen Software: Python

PACKAGE="python3"

# Check if package is installed using rpm
if rpm -q $PACKAGE &>/dev/null; then
    echo "$PACKAGE is installed"
    # Show version, license and summary using grep with -E for multiple patterns
    rpm -qi $PACKAGE | grep -E "Version|License|Summary"
else
    echo "$PACKAGE not found via rpm"
fi

# Case statement to print philosophy note based on package name
case $PACKAGE in
    python3)
        echo "Python: open source language by Guido van Rossum, PSF License"
        ;;
    git)
        echo "Git: built by Linus when proprietary tools failed him"
        ;;
    httpd)
        echo "Apache: powers the open internet"
        ;;
    vlc)
        echo "VLC: built by students who needed a free media player"
        ;;
    *)
        echo "Part of the FOSS ecosystem"
        ;;
esac
