#!/bin/bash

cp .bashrc /$HOME/.bashrc && pkg update && pkg upgrade && pkg install root-repo unstable-repo x11-repo && apt install -y zsh nmap dnsutils coreutils figlet toilet metasploit python curl perl hydra sqlmap crunch golang && pip install lolcat cowsay && wget -O install-nethunter-termux https://offs.ec/2MceZWr && chmod +x install-nethunter-termux && ./install-nethunter-termux && git clone https://github.com/adi1090x/termux-style tstyle && cd tstyle && chmod +x install && bash install
echo -e "\e[1;92m:: \eTermux installed completed ::\n"
