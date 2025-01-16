#!/bin/bash

# Script de mise à jour

echo "Mise à jour du système..."
sudo apt update && sudo apt upgrade -y
echo "Système mis à jour avec succès."
echo 
echo -e Pour revenir en arrière écrit "\033[32;1;4mBack\033[0m"
echo  
read input
if [ "$input" == "back" ]; then
    bash /home/mael/Bureau/Bot/BArtz.sh
fi