#!/bin/bash
clear
echo
echo -e "\033[36;1mBonjour, voici la liste des lien disponible :!\033[0m"
echo
echo -e "\033[31;1;4mChatGPT\033[0m / \033[32;1;4mCanva\033[0m / \033[33;1;4mGmail\033[0m / \033[34;1;4mGoogle\033[0m / \033[34;1;4mLynx\033[0m"
echo
echo -e "\033[;1;30mVous n'avez plus qu'a écricre le nom que vous souhaitez et faire ctrl + clique droit pour accesez au site.\033[0m"
echo
echo -e "\033[31;1;4mRevenir au menu écrit 'Back'\033[0m"
read lien
#!===============================
# Convertir la saisie utilisateur en minuscules
maj=${maj,,}
#!===============================
if [ "$lien" == "chatgpt" ]; then
    clear
    echo          
    echo https://chatgpt.com
    echo
    echo -e Pour revenir en arrière écrit "\033[32;1;4mBack\033[0m"
    echo  
    read rep
fi
#!===============================
if [ "$lien" == "canva" ]; then
    clear
    echo          
    echo https://canva.com
    echo
    echo -e Pour revenir en arrière écrit "\033[32;1;4mBack\033[0m"
    echo  
    read rep
fi
#!===============================
if [ "$lien" == "gmail" ]; then
    clear
    echo          
    echo https://gmail.com
    echo
    echo -e Pour revenir en arrière écrit "\033[32;1;4mBack\033[0m"
    echo  
    read rep
fi
#!===============================
if [ "$lien" == "google" ]; then
    clear
    echo
    echo https://google.com
    echo
    echo -e Pour revenir en arrière écrit "\033[32;1;4mBack\033[0m"
    echo
    read rep
fi
#!===============================
if [ "$lien" == "lynx" ]; then
    clear
    echo
    echo "Lynx qu'es que c'est ? c'est un navigateur web en versions texte"
    echo
    echo apt://lynx
    echo
    echo -e Pour revenir en arrière écrit "\033[32;1;4mBack\033[0m"
    echo
    read rep
fi
if
     [ "$rep" == "back" ]; then
    bash /home/mael/Bureau/Bot/BArtz.sh
fi
