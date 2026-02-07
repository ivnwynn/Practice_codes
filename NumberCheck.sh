#!bin/bash/

echo "Input a number"
read -p ">>" NUM
if [ $NUM -gt 10 ]; then
	echo "Big Number"
else
	echo "Small Number"
fi

