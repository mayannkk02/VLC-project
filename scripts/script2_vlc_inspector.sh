#!/bin/bash

# Script 2: FOSS Package Inspector for VLC
# Checks whether VLC is installed, prints version/package info,
# and uses if-else plus case statements.

echo "========================================"
echo "          VLC PACKAGE INSPECTOR"
echo "========================================"

if command -v vlc >/dev/null 2>&1; then
    echo "Status: VLC is installed."
    echo

    echo "VLC Version:"
    vlc --version 2>/dev/null | head -n 1

    echo
    echo "Package Details:"

    if command -v apt >/dev/null 2>&1; then
        apt show vlc 2>/dev/null | grep -E '^(Package|Version|Section|Maintainer|Description):'
    elif command -v dpkg >/dev/null 2>&1; then
        dpkg -s vlc 2>/dev/null | grep -E '^(Package|Version|Section|Maintainer|Description):'
    else
        echo "Package manager details not available on this system."
    fi

    echo
    echo "Choose a number to see VLC purpose:"
    echo "1. Media Playback"
    echo "2. Streaming"
    echo "3. Format Conversion"
    read -r choice

    case $choice in
        1)
            echo "VLC is a multimedia player that supports almost all audio and video formats."
            ;;
        2)
            echo "VLC can stream media over networks using various streaming protocols."
            ;;
        3)
            echo "VLC can convert media files from one format to another."
            ;;
        *)
            echo "Invalid choice entered."
            ;;
    esac
else
    echo "Status: VLC is NOT installed on this system."
fi

echo "========================================"