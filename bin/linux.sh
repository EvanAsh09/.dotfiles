#!/bin/bash

#Configures .nanorc and .bashrc for a new evironment
#Creates .TRASH

#Check operating system
if [ "$(uname)" != "Linux" ]; then

	#log error message to linuxsetup.log then exits
	echo "Error: This script can only be run on linux." >> linuxsetup.log
	exit 1

fi

#Create .TRASH directory
mkdir -p ~/.TRASH

#check if nanorc exists in home directory
if [ -f ~/.nanorc ]; then
	
	#rename nanorc if it already exists and log
	mv ~/.nanorc ~/.bup_nanorc
	echo "Existing .nanorc file renamed to .bup_nanorc" >> linuxsetup.log

fi

#redirect etc/nanorc to ~/.nanorc
cat ~/.dotfiles/etc/nanorc > ~/.nanorc

#add the custom bashrc source line if not already there
if ! grep -q "source ~/.dotfiles/etc/bashrc_custom" ~/.bashrc; then

	echo "source ~/.dotfiles/etc/bashrc_custom" >>  ~/.bashrc;

fi
