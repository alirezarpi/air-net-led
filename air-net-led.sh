#!/bin/bash

# Airplane LED - OFF = Internet Access
# Airplane LED - ON = No Internet Access
apFolder=$(ls /sys/class/leds | grep -i airplane)
while true; do
		netCvar=$(ping -c 1 4.2.2.4 | grep "64 bytes" | cut -d " " -f 1 2>/dev/null)
		if [[ netCvar -eq "64" ]]; then
			echo 255 > /sys/class/leds/$apFolder/brightness
		else
			echo 0 > /sys/class/leds/$apFolder/brightness
		fi
		sleep 1
done
