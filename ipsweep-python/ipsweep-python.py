#!/usr/bin/env python
import subprocess
import os

# Do not display output
FNULL = open(os.devnull, 'w')

def pingNetwork():
        network = raw_input('Saisir le réseau [192.168.2.0]: ')[0:-1]
        starting_ip = raw_input('Premier IP: ')
        ending_ip = raw_input('Dernier IP: ')

        for i in range(int(starting_ip), int(ending_ip)):

            try:
                subprocess.check_call(['ping', '-c', '1', network + str(i)], stdout=FNULL,stderr=FNULL)

            except (OSError, subprocess.CalledProcessError):

                print "[-] ÉTEINT {}{}".format(network,i)
            else:

                prin t"[+] OUVERT {}{}".format(network,i)

pingNetwork()
