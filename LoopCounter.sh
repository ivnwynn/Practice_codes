#!/bin/bash

echo "Enter a number"
read -p ">>" NUM
until [ $NUM -gt 10 ]; do
	echo "Count is $NUM"
	((NUM++))
done

