#!/bin/bash
#
#
#

if [[ $EUID != 0 ]] ; then
	echo " "
	echo "$(tput setaf 1)[!]$(tput setaf 3)You MUST be root."
	echo " "
	exit
fi

echo " "
echo "$(tput setaf 1)[+]$(tput setaf 3)Updating..."
apt update -y &> /dev/null
echo "$(tput setaf 1)[V]$(tput setaf 3)Done."
echo " "
sleep 1
echo "$(tput setaf 1)[+]$(tput setaf 3)Upgrading..."
apt full-upgrade -y &> /dev/null
echo "$(tput setaf 1)[V]$(tput setaf 3)Done."
echo " "
sleep 1
echo "$(tput setaf 1)[+]$(tput setaf 3)Installing fig."
apt install figlet &> /dev/null
echo "$(tput setaf 1)[V]$(tput setaf 3)Done."
echo " "
sleep 1
echo "$(tput setaf 1)[+]$(tput setaf 3)Installing cowsay."
apt install cowsay &> /dev/null
echo "$(tput setaf 1)[V]$(tput setaf 3)Done."
echo " "
sleep 1
echo "$(tput setaf 1)[+]$(tput setaf 3)Installing Fort."
apt install fortune &> /dev/null
echo "$(tput setaf 1)[V]$(tput setaf 3)Done."
echo " "
sleep 1
echo "$(tput setaf 1)[+]$(tput setaf 3)Instaling lolcat."
apt install lolcat &> /dev/null
echo "$(tput setaf 1)[V]$(tput setaf 3)Done."
echo " "
sleep 1
echo "$(tput setaf 1)[+]$(tput setaf 3)Installing curl."
apt install curl &> /dev/null
echo "$(tput setaf 1)[V]$(tput setaf 3)Done."
echo " "
sleep 1

echo "$(tput setaf 1)[+]$(tput setaf 3)Installing killsms."

chmod +x killsms
cp killsms /usr/bin/

echo "$(tput setaf 1)[V]$(tput setaf 3)Done."
sleep 1

echo " "
echo "$(tput setaf 1)[+]$(tput setaf 3)Installed."
echo " "
