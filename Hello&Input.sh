#!/bin/bash

echo "What is your name?"
read -p ">>" NAME
if [ $NAME = "Ivan" ]; then 
	echo "Hello Sir, How may I help you today?"
else 
	echo "Unauthorized Personel Rejected"
fi


