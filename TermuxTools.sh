#!/bin/bash

#Color Code List
def="\e[1;"
red="${def}91m"
cyan="${def}96m"
yellow="${def}93m"
green="${def}92m"
reset="${def}0m"
blink="${def}5m"
ul="${def}5m"

alert=$green"[$red!$green]"
success=$red"[$green+$red]"
fail=$"$green[$red-$green]"

#Author name 
author="ERROR 404 / RetroSec"

pkg install -y toilet python && pip install lolcat

clear && toilet -F border TERMUX | lolcat 

echo -e $cyan"\nCreate by : ${red}ERROR404"
echo -e $green"Github : ${yellow}https://github.com/RetroSec"
echo -e $red"Youtube: ${green}https://www.youtube.com/channel/UCXM0-_7XMQKWpxuPBEo-VtQ?\n"

echo -e "$success${cyan}เลือกเมนูที่ต้องการ$success\n"
echo -e $green"[${cyan}1${green}] ${cyan}ติดตั้ง Kali Nethunter และ อัพเดท Termux"
echo -e $green"[${cyan}2${green}] ${cyan}Github Downloader"
echo -e $green"[${cyan}3${green}] ${cyan}ติดตั้ง Termux Style"
echo -e $green"[${cyan}99${green}]$cyanออกจากสคริปต์\n"

read -p "Termux:> " opt

if [ $opt == "1" ]; then

termux-setup-storage && pkg install -y wget git php curl perl hydra toilet figlet dnsutils coreutils sqlmap crunch metasploit php-apache apache2 php && pkg update && pkg update && wget -O install-nethunter-termux https://offs.ec/2MceZWr && chmod +x install-nethunter-termux && ./install-nethunter-termux && echo -e "$alert${cyan}พิมพ์ nh -r เพื่อเข้าใช้งาน kali net hunter\n" && exit

elif [ $opt == "2" ]; then

clear && toilet -F border Git DL | lolcat 

echo -e $cyan"\nCreate by : ${red}ERROR404"
echo -e $green"Github : ${yellow}https://github.com/RetroSec"
echo -e $red"Youtube: ${green}https://www.youtube.com/channel/UCXM0-_7XMQKWpxuPBEo-VtQ?\n"

read -p "Github Author:> " author
read -p "Repository:> " repo
read -p "Output:> " output

git clone https://github.com/$author/repo $output

bash termux.sh

elif [ $opt == "3" ]; then

git clone https://github.com/adi1090x/termux-style.git tstyle && cd style && chmod +x install && bash install && bash termux.sh

elif [ $opt == "99" ]; then

exit

else

bash termux.sh

fi
