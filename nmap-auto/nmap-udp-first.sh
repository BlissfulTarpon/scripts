#!/bin/bash

for ip in $(cat pingsweep.txt);do
  nmap -A -sV -sU --script=default,vuln --top-ports 1000 --open -oA udp_$ip $ip
done
