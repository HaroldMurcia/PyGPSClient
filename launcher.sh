#!/bin/bash
# -*- ENCODING: UTF-8 -*-
clear

export DISPLAY=:0.0

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
LIGHT_GRAY='\033[0;37m'
WHITE='\033[1;37m'

printf "${GREEN}[iwgetid]${WHITE}"
iwgetid
printf "\n"
printf "${GREEN}[Timectl status]${WHITE}\n"
timedatectl status

sleep 3
ifconfig

cd /home/$USER/PyGPSClient
python3 -m pygpsclient &
