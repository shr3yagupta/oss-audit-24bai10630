#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="git"

echo "Checking package: $PACKAGE"
echo "--------------------------"

# Check if package is installed
if dpkg -l | grep -q $PACKAGE; then
    echo "$PACKAGE is installed ✅"
    dpkg -l | grep $PACKAGE | head -1
else
    echo "$PACKAGE is NOT installed ❌"
fi

echo ""

# Case statement for description
case $PACKAGE in
    git) echo "Git: A distributed version control system used by developers worldwide." ;;
    vlc) echo "VLC: A free and open-source multimedia player." ;;
    firefox) echo "Firefox: A privacy-focused open-source web browser." ;;
    apache2) echo "Apache: A powerful open-source web server." ;;
    *) echo "Unknown package" ;;
esac
