#!/bin/bash

if [ "$1" == "" ]
    then
        echo "You need to provide the network"
        echo "Syntax: ./ipsweep.sh 192.168.1"
        exit 0
    else
        for ip in `seq 1 254`; do
                        ping -c1 -W1 $1.$ip &>/dev/null && echo "$1.$ip" >> pingsweep.txt
        done
fi
                nmap -iL pingsweep.txt -A -sV --script=default,vuln -p- --open -oA tcp_scan

