#! /bin/bash
# simple hello

Green='\033[0;32m'
Red='\033[0;31m'
NoCol='\033[0m' # No Color

echo -e "${Green}Tere ${Red}Maailm${NoCol}! "

sudo apt update

while true; do
   date +%d-%m-%y_%H:%M:%S
   read -p "Kas soovid oma linuxi pakkete uuendada? Yes/No/list - y/n/l: " yn
   case $yn in
      [Yy]* ) sudo apt upgrade -y; sudo apt autoremove -y; break;;
      [Nn]* ) echo -e "Ok ss, ole ${Red}siuke! ${NoCol}:("; exit;;
      [Ll]* ) sudo apt list --upgradable;;
      * ) echo -e "Palun vasta ${Green}jah ${NoCol}või ${Red}ei${NoCol}";;
   esac
done
