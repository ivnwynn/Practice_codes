#!/bin/bash

current_user=$(whoami)
hostname=$(hostnamectl)
uptime=$(uptime)
disk_usage=$(df -h)
ip_addr=$(ifconfig | grep "inet" | awk 'NR==1{print $2}')

echo "State your need"
read -p ">> " INFO
if [ "$INFO" == "current-user" ]; then
	echo $current_user

elif [ "$INFO" == "hostname" ]; then
	echo "$hostname" 

elif [ "$INFO" == "uptime" ]; then
	echo "$uptime"

elif [ "$INFO" == "disk-usage" ]; then
	echo "$disk_usage"

elif [ "$INFO" == "ip_address" ]; then
	echo "$ip_addr"

else
	echo "I think, I don't have it bye"
fi

