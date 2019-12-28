#!/bin/bash

if [ "$1" == "" ]
    then
        echo "You need to provide the network"
        echo "Syntax: ./ipsweep.sh 192.168.1"
    else
        for ip in `seq 1 254`; do
		ping -c1 -W1 $1.$ip &>/dev/null && echo "$1.$ip" >> pingsweep.txt
	done	
fi
		for host in $(cat pingsweep.txt);do
		nmap -A -sV --script=default,vuln -p- --open -oA tcp_scan $host
done
