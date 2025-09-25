#!/bin/bash
currDir=$(pwd)
echo "Present Working Directory: $currDir"

CurrUser=$(whoami)
echo "User: $currUser"

ram=$(free -h | awk '/Mem:/ {print $2}')
echo "RAM: $ram"

free_disk=$(df -h / | awk 'NR==2 {print $4}')
echo "Free Disk: $free_disk"

files=$(ls)
echo "Files: $files"

echo "Content:"
cat script.sh
