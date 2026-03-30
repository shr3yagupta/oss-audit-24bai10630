#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer the following questions:"
echo ""

read -p "1. Name one open-source tool you use: " TOOL
read -p "2. What does freedom mean to you (one word)? " FREEDOM
read -p "3. What would you like to build and share? " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "" > $OUTPUT
echo "Open Source Manifesto" >> $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "" >> $OUTPUT

echo "I believe in the power of open source. Tools like $TOOL show how collaboration can change the world." >> $OUTPUT
echo "For me, freedom means $FREEDOM, and I want to use it to build $BUILD." >> $OUTPUT
echo "I will contribute, share, and learn with the community." >> $OUTPUT

echo ""
echo "✅ Manifesto saved in $OUTPUT"
echo "--------------------------------"
cat $OUTPUT

