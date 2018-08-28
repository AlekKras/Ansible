#!/bin/bash

dnf()
{
	sudo dnf install ansible
}

yum()
{
	sudo yum install epel-release
	sudo yum install ansible
}

apt()
{
	sudo apt-get update
	sudo apt-get install software-properties-common
  sudo apt-add-repository ppa:ansible/ansible
  sudo apt-get update
  sudo apt-get install ansible
	sudo apt autoremove
}

portage()
{
	emerge -av app-admin/ansible
	# you may need to do this
	echo 'app-admin/ansible' >> /etc/portage/package.accept_keywords
}

pkg()
{
	sudo pkg install ansible
	#You may also wish to install from ports
	sudo make -C /usr/ports/sysutils/ansible install
}

pacman()
{
	#it should be available for you already
	pacman -S ansible
}

pip()
{
	sudo easy_install pip
	sudo pip install ansible
}

bash()
{
	git clone https://github.com/ansible/ansible.git --recursive
	cd ./ansible
	source ./hacking/env-setup && source ./hacking/env-setup.fish
}

install()
{
	echo -n "What installation you want to do? (dnf, yum, apt, portage, pkg, pacman, pip, bash )"
	read answer
	if [ $answer == "dnf" ]; then
		dnf
	elif [ $answer == "yum" ]; then
		yum
	elif [ $answer == "apt" ]; then
		apt
	elif [ $answer == "portage" ]; then
		portage
	elif [ $answer == "pkg" ]; then
		pkg
	elif [ $answer == "pacman" ]; then
		pacman
	elif [ $answer == "pip" ]; then
		pip
	elif [ $answer == "bash" ]; then
		bash
	else
		echo -n "Would you like to type again since you didn't type correctly the first time? (Y/N)"
		read option
		if [ $option == "Y" ]; then
			install
		else
			exit 1
		fi
	fi
}
install
