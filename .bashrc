#!/bin/bash

#Color Code List
def="\e[1;"
red="${def}91m"
cyan="${def}96m"
yellow="${def}93m"
green="${def}92m"
reset="${def}0m"
blink="${def}5m"

figlet -f small ERROR 404 | lolcat
echo -e $green"พัฒนาโดย: ${red}ERROR 404"
echo -e $cyan"Github: ${yellow}https://github.com/RetroSec${reset}\n"

$PS1="${red}ERROR 404:> "

read -p "ต้องการที่จะใช้งาน Kali net hunter แบบไม่รูทหรือไม่? [Y/n]:> " opt

if [ $opt == "Y" ] || [ $opt == "y" ]; then

clear && nh -r

elif [ $opt == "N" ] || [ $opt == "n" ]; then

clear && figlet -f small ERROR 404 | lolcat

fi
