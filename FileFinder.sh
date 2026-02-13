#!/bin/bash

echo "Find your file."
read -p ">> " FILE
if [ -e "$FILE" ]; then
	echo "Your file is in: $(realpath "$FILE")"
else
	read -p "Your file doesn't exist, want to make a new file?(y/n): " ANSWER
	if [ "y" == "$ANSWER" ]; then
		DIR=$(dirname "$FILE")
		mkdir -p "$DIR"
		touch "$FILE"
		echo "File created successfully!"

	elif [ "n" == "$ANSWER" ]; then 
	echo "See you again"
	fi
fi
	
