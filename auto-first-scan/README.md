# SCAN INITIAL AUTOMATIQUE

Le but de ce script est d'automatiser le scan initial lors d'un engagement. Il fonctionne en quatre étapes:
  - Ping sweep du réseau complet
  - Sauvegarde le résultat sous un fichier pingsweep.txt
  - Scan avec nmap en TCP
  - Sauvegarde en fichiers recherchable

## DÉPENDANCES

- Bash

- ping

- nmap

## USAGE

    ./first-scan.sh <réseau>

    ./first-scan.sh 192.168.1
