#!/bin/bash

# Script 1: System Identity Report
# Displays Linux distribution, kernel version, current user,
# home directory, uptime, date/time, and a licensing note.

echo "========================================"
echo "         SYSTEM IDENTITY REPORT"
echo "========================================"

echo "Linux Distribution:"
if command -v lsb_release >/dev/null 2>&1; then
    lsb_release -d | cut -f2
else
    cat /etc/os-release | grep '^PRETTY_NAME=' | cut -d= -f2 | tr -d '"'
fi

echo

echo "Kernel Version:"
uname -r

echo

echo "Current User:"
whoami

echo

echo "Home Directory:"
echo "$HOME"

echo

echo "System Uptime:"
uptime -p 2>/dev/null || uptime

echo

echo "Current Date and Time:"
date

echo

echo "Open Source License Note:"
echo "Linux is distributed under open-source licenses, including the GNU GPL."
echo "========================================"