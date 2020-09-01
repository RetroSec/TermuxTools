#!/bin/bash

def="\e[1;"
red="${def}91m"
cyan="${def}96m"
yellow="${def}93m"
green="${def}92m"
reset="${def}0m"

author="RetroSec | ERROR 404"

pkg install -y pip figlet && pip install lolcat

clear && figlet -f small TermuxTools | lolcat
echo -e $green"เขียนโดย: ${cyan}$author"

pkg update && pkg upgrade && pkg install -y python perl curl dnsutils coreutils nmap hydra metasploit && wget -O install-nethunter-termux https://offs.ec/2MceZWr && chmod +x install-nethunter-termux && ./install-nethunter-termux && rm -r TermuxTools && git clone https://github.com/adi1090x/termux-style.git && cd termux-style && chmod +x install && ./install && mv .bashrc /$HOME/.bash
