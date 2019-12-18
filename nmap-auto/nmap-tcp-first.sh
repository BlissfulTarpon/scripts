#!/bin/bash

for ip in $(cat pingsweep.txt);do
  nmap -A -sV --script=default,vuln -p- --open -oA tcp_$ip $ip
done

