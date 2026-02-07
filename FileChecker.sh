#!bin/bash/

echo "Search a file"
read -p ">>" FILENAME

if [ -e $FILENAME ]; then
	echo "File Found"
else
	echo "File doesn't exist"
fi
