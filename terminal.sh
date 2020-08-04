#Code By Cicada
#Please do not copy code

#!/bin/bash

#clear
clear

#start main loop
for ((c=10;c>5;c++)) do
	read -p "root@$(pwd)# " command
	$command
	if [[ $command = "msf" ]]; then
		service ssh start
		service apache2 start
		service postgresql start
		msfconsole
	elif [[ $command = "msfv" ]]; then
		msfvenom
	elif [[ $command = "Ping" ]]; then
		read -p "Choose site to ping : " sitename
		ping $sitename
	elif [[ $command = "Ping --classic" ]]; then
		read -p "Choose site to ping : " sitename
		ping -c 4 $sitename
	elif [[ $command = "ufo --ddos" ]]; then
		clear
		read -p "Choose site for DDOS : (must be http or https)" sitename
		echo "OK"
		read -p "Choose round : " round
		cd /root/Desktop/clones/ufonet && python3 ufonet -a $sitename -r $round
	elif [[ $command = "wires" ]]; then
		wireshark
	elif [[ $command = "ether" ]]; then
		etherape
	elif [[ $command = "start phishing" ]]; then
		cd /root/Desktop/clones/shellphish && ./shellphish.sh
	elif [[ $command = "ipcs" ]]; then
		cd /root/Desktop/clones/ipcs && python2 scan.py
	elif [[ $command = "ngrok start" ]]; then
		service apache2 start
		cd /root/Desktop/clones/shellphish && ./ngrok http 80
	elif [[ $command = "tsh" ]]; then
		sudo tshark
	elif [[ $command = "update" ]]; then
		apt update
	elif [[ $command = "upgrade" ]]; then
		apt upgrade
	elif [[ $command = "whereami" ]]; then
		pwd
	elif [[ $command = "Nomrebi" ]]; then
		cd /root/Desktop/clones/Nomrebi.com && python3 Nomrebi.py
	elif [[ $command = "xerxes" ]]; then
		read -p "Choose site : "sitename
		echo "OK"
		read -p "Choose port : " port
		./xerxes $sitename $port
	fi
done