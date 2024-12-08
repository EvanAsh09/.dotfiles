#!/bin/bash

#Reverses what linux.sh does

#remove .nanorc file from home directory
rm -f ~/.nanorc
echo "removed .nanorc file from the home directory."

#remove custom basgrc source luine from .bashrc
sed -i '/source ~\/.dotfiles\/etc\/bashrc_custom/d' ~/.bashrc
echo "Removed custome bashrc source line from .bashrc."

#Remove trash directory
rm -rf ~/.TRASH
echo "Removed .TRASH directory from the home directory."
