#!/bin/bash
echo " QUICK SERVER HEALTH "
echo " Date: $(date) "
echo "---------------------"

echo "Storage Space:"
df -h | grep -E "/$| /System/Volumes/Data"

echo "--------------------"
echo "Network Connection Check:"
ping -c 2 google.com | grep "packets transmitted"

echo "-------------------"
