#!/bin/bash

if  [ ! -e /etc/debian_version ] ; then
	echo -e "\033[0;31m distro not found \033[0m"  
	exit 1
fi

git pull

rsync -avz -b --backup-dir=old_dotfiles  --include .[^.]* --exclude .git --exclude README.md  $HOME/

echo 
echo -e  "\033[0;32m sync $DISTRO config \033[0m"
echo

exit 0

