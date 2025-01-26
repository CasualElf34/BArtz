#!/bin/bash
clear
echo
echo -e "\033[36;1mBonjour, je suis l'assistant Bot !\033[0m"
echo        
echo -e "\033[36;1mQu'as-tu besoin ?\033[0m"
echo   
echo -e "\033[31;1;4mMaj\033[0m / \033[32;1;4mLien\033[0m / \033[34;1;4mChatGPT\033[0m"
echo   
read maj

#!===============================
# Convertir la saisie utilisateur en minuscules
maj=${maj,,}
#!===============================
# Lance le script "maj.sh" si l'utilisateur écrit "maj"
if [ "$maj" == "maj" ]; then
    	./commande/maj.sh
fi
#!===============================
# Lance un répertoire de plusieur lien utile
if [ "$maj" == "lien" ]; then
    clear
    echo
    echo Vous allez etre rediriger vers les lien disponible
    echo
    sleep 2
    ./commande/lien.sh
fi
#!===============================
# Lance le script pour poser n'importe quelle question
if [ "$maj" == "chatgpt" ]; then
    clear
    echo
    echo Vous allez etre rediriger vers ChatGPT
    echo
    sleep 2
    clear
    ./commande/lynx.sh
fi
#!===============================
# Pour tout les mot non demander on réinitialise le script
if [ "$maj" != "images" ] && [ "$maj" != "maj" ] && [ "$maj" != "lien" ]; then
    echo -e "\033[31;1mErreur de syntaxe ! Recommence.\033[0m"
    ./BArtz.sh
fi
