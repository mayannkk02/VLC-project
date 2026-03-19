#!/bin/bash

# Script 4: Log File Analyzer
# Reads a log file line by line, counts ERROR and WARNING entries,
# and accepts the log file path as a command-line argument.

echo "========================================"
echo "            LOG FILE ANALYZER"
echo "========================================"

if [ $# -ne 1 ]; then
    echo "Usage: $0 <log_file_path>"
    exit 1
fi

logfile="$1"

if [ ! -f "$logfile" ]; then
    echo "Error: File does not exist."
    exit 1
fi

error_count=0
warning_count=0
total_lines=0

while IFS= read -r line; do
    total_lines=$((total_lines + 1))

    if [[ "$line" == *"ERROR"* ]]; then
        error_count=$((error_count + 1))
    fi

    if [[ "$line" == *"WARNING"* ]]; then
        warning_count=$((warning_count + 1))
    fi
done < "$logfile"

echo "Log File: $logfile"
echo "Total Lines: $total_lines"
echo "ERROR Lines: $error_count"
echo "WARNING Lines: $warning_count"

echo "========================================"