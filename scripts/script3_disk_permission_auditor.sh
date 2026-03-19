#!/bin/bash

# Script 3: Disk and Permission Auditor
# Checks disk usage and permissions for important directories,
# and also inspects VLC's configuration directory.

echo "========================================"
echo "       DISK AND PERMISSION AUDITOR"
echo "========================================"

directories=("/" "/home" "/usr" "/var")

for dir in "${directories[@]}"; do
    echo "Directory: $dir"

    echo "Disk Usage:"
    du -sh "$dir" 2>/dev/null

    echo "Owner and Permissions:"
    ls -ld "$dir"

    echo "----------------------------------------"
done

echo "Checking VLC configuration directory:"
vlc_config="$HOME/.config/vlc"

if [ -d "$vlc_config" ]; then
    echo "VLC config directory found."
    ls -ld "$vlc_config"
else
    echo "VLC config directory not found."
fi

echo "========================================"