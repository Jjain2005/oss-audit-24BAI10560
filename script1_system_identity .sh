#!/bin/bash
# Script 1: System Identity Report
# Author: Jinam Jain | Reg No: 24BAI10560
# Course: Open Source Software | Chosen Software: Python

STUDENT_NAME="Jinam Jain"
REG_NO="24BAI10560"
SOFTWARE_CHOICE="Python"
KERNEL=$(uname -r)
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
CURRENT_DATE=$(date '+%A, %d %B %Y')
CURRENT_TIME=$(date '+%H:%M:%S')
KERNEL_LICENSE="GNU General Public License v2 (GPL v2)"

echo "============================"
echo "   OSS AUDIT - Jinam Jain"
echo "   Reg: 24BAI10560 | Python"
echo "============================"
echo "Kernel  : $KERNEL"
echo "User    : $USER_NAME"
echo "Home    : $HOME_DIR"
echo "Uptime  : $UPTIME"
echo "Date    : $CURRENT_DATE"
echo "Time    : $CURRENT_TIME"
echo "License : $KERNEL_LICENSE"
echo "============================"
