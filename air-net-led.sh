#!/bin/bash

# Airplane LED - OFF = Internet Access
# Airplane LED - ON = No Internet Access
apFolder=$(ls /sys/class/leds | grep -i airplane)

if [[ "$apFolder" == "" ]]; then
	echo -e "\033[31mYour laptop doesn't have Airplane LED\033[00m"                                          
	exit 0                                                                                
fi   

while true; do
		ping -c 1 4.2.2.4 &> /dev/null
		if [[ "$?" == "0" ]]; then
			echo 0 > /sys/class/leds/$apFolder/brightness
		else
			echo 255 > /sys/class/leds/$apFolder/brightness
		fi
		sleep 1
done
