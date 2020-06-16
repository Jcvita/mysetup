#!/bin/bash


LOCATION=$(pwd)
cd ~/.config/nvim		
CURRENTCONF=$(ls)
cd $LOCATION

echo "Checking if nvim is installed..."
sleep .4
if [[ -d "/usr/bin/nvim" ]] || [[ -d "/usr/share/nvim/" ]]; then
	echo "nvim is installed. Checking if setup is already installed..."
	sleep .4
	if [[ -f "~/.config/nvim/nviminstall.sh" ]]; then
		echo "Setup is already installed. Why bother running this script?"
	else
		echo "Setup not installed. Saving current config into folder 'old'."
		sleep .4
		cd ~/.config/nvim
		mkdir old
		mv $CURRENTCONF old/
		echo "Old config backed up. Installing new one."
		sleep .4
		cd $LOCATION
		cp -r * ~/.config/nvim
		echo "New config installed. Happy developing!"

	fi
else
	echo "nvim is not installed. Install nvim? (y/n)"
	
	read install
	if [[ $install == y ]]; then
		sudo apt-get install neovim
	else
		echo "Install theme for the future? (y/n)"	
		read install2
		if [[ $install2 == y ]]; then
			echo "Installing theme..."
			sleep .4
			mkdir ~/.config/nvim
			cp -r * ~/.config/nvim
			echo "New config installed. Happy developing!"
		else
			echo "Okay, enjoy developing without my setup."
		fi
	fi
fi

