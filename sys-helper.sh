#!/bin/bash
username=$(whoami)
echo "Welcome, $username."

directory=$(pwd)
date=$(date)
kernel=$(uname)

echo "Directory: $directory"
echo "Date: $date"
echo "Kernel: $kernel"
echo " "

opt=("1) Show disk usage" "2) Show memory usage" "3) Count files in current directory")
for opt in "${opt[@]}"; do
	echo "$opt"
done

read -p ">> " CHOICE

if [ "$CHOICE" = "1" ]; then
	echo $(pwd)

elif [ "$CHOICE" = "2" ]; then
	echo "Launching top..."
	top -b -n 1

elif [ "$CHOICE" = "3" ]; then
	echo ls -1 | wc -l

else
	echo "Invalid option"
fi


