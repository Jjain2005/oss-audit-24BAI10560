#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Jinam Jain | Reg No: 24BAI10560
# Course: Open Source Software | Chosen Software: Python
#
# Alias concept (demonstration):
# In an interactive shell you could type: alias today='date +%d\ %B\ %Y'
# Then just type 'today' to get the date.
# Aliases cannot be used inside scripts so we use variables instead.

echo "Answer 3 questions to generate your manifesto."
echo ""

# read -p asks the question and waits for user input
read -p "1. One open-source tool you use daily: " TOOL
read -p "2. In one word, what does freedom mean to you: " FREEDOM
read -p "3. One thing you would build and share freely: " BUILD

# Get current date and set output filename
DATE=$(date)
OUTPUT="manifesto_jinamjain.txt"

# Write to file using > to create and >> to append
echo "================================" > $OUTPUT
echo "OPEN SOURCE MANIFESTO" >> $OUTPUT
echo "Jinam Jain | 24BAI10560" >> $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "================================" >> $OUTPUT

# String concatenation using variables inside echo
echo "I use $TOOL every day - a tool that exists because someone chose to share it freely." >> $OUTPUT
echo "To me freedom means $FREEDOM - the right to understand and modify what I depend on." >> $OUTPUT
echo "If I could build one thing freely it would be $BUILD." >> $OUTPUT
echo "================================" >> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
echo ""

# cat reads and displays the saved file
cat $OUTPUT
