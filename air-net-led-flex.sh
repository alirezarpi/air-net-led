#!/bin/bash 

systemctl stop air-net-led.service &> /dev/null

apFolder=$(ls /sys/class/leds | grep -i airplane)

if [[ "$apFolder" == "" ]]; then
		echo -e "\033[1;31mYour laptop doesn't have Airplane LED\033[00m"
		exit 2		
fi   

if [[ "$1" == "stop" ]]; then
		tput setaf 1
		echo 0 > /sys/class/leds/$apFolder/brightness
		pgrep -f air-net-led-flex.sh | xargs kill -9 
fi

echo -e "\033[33mIf you had air-net-led service running, it is Stopped\033[00m"
echo -e "\033[33mremember to run it after you stopped this script\033[00m"

echo -e "\033[34mTarget IP to Monitor [Default 4.2.2.4]:\033[00m\033[1;36m \c"
read IP
echo -e "\033[00m\c"

echo -e "\033[34mEnter Count Request Number [Default 1]:\033[00m\033[1;36m \c"
read CR
echo -e "\033[00m\c"

if [[ "$CR" == "" ]]; then
		CR='1'
fi

if [[ "$IP" == "" ]]; then
		IP='4.2.2.4'
fi

echo -e "\033[32m- Starting with IP \033[00m\033[36m$IP\033[00m \033[32mAnd Count Request\033[00m \033[36m$CR\033[00m \033[32m-\033[00m"

while true; do
		ping -c $CR $IP &> /dev/null 	
		if [[ "$?" == "0" ]]; then
			echo 0 > /sys/class/leds/$apFolder/brightness
		else
			echo 255 > /sys/class/leds/$apFolder/brightness
		fi
		sleep 0.1
done &
echo -e "\033[31mStop this with \033[00m \033[34m'sudo air-net-led-flex.sh stop'\033[00m"
