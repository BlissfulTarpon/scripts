# NMAP SCAN AUTOMATISÉ

Prend le contenu du fichier "pingsweep.txt" et exécute un scan TCP/UDP sur les machines étant ouverte seulement. Permet de faire le scan d'un réseau beaucoup plus rapidement.

## DÉPENDANCE

linux (Kali)
nmap
bash

## USAGE

Nécessite un fichier pingsweep.txt contenant une adresse IP par ligne comme suit:

192.169.1.1
192.168.1.2
[...]

Copier le script dans votre PATH sinon faire l'exécution comme suit:

    ./nmap-tcp-first.sh
    ./nmap-udp-first.sh

---
