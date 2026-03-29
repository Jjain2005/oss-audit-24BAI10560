OSS Audit - Python
Jinam Jain 
24BAI10560 
Open Source Software

This repository is part of my capstone project for the Open Source Software course.
For this project I selected Python as the software to study. I created and tested 5 different shell scripts on a Linux system using Webminal.
These scripts helped me understand how Python and open source tools work in a real environment.

About the Scripts:

Script 1 - System Identity Report
This script shows basic system details like kernel version, current user, date, and OS license.
Run using: bash script1_system_identity.sh

Script 2 - FOSS Package Inspector
This script checks if python3 is installed, shows its version and license, and prints a small note about why it is important in open source.
Run using: bash script2_package_inspector.sh

Script 3 - Disk and Permission Auditor
This script checks important system directories and displays their permissions and disk usage.
Run using: bash script3_disk_auditor.sh

Script 4 - Log File Analyzer
This script searches a log file for a keyword, counts how many times it appears, and shows the last 3 matching lines.
Run using: bash script4_log_analyzer.sh

Script 5 - Open Source Manifesto Generator
This script asks a few questions and creates a personal open source statement saved in a text file.
Run using: bash script5_manifesto_generator.sh

How to Run
You need a Linux system to run these scripts. I used Webminal (webminal.org), which is free and easy to use.

Steps:
Upload or create the scripts in your system
Make them executable using:
chmod +x script_name.sh
Run them using the bash command
Dependencies

Only basic tools are required:
bash
standard Linux commands like uname, whoami, rpm, du, and grep.

All of these are already available in most Linux systems, so no extra installation is needed.

 
Requirements
Linux system or Webminal (webminal.org)
