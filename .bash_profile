# /etc/skel/.bash_profile
if [[ -z $DISPLAY ]] && [[ -f ~/.bashrc ]] ; then
	source .xprofile
fi
# This file is sourced by bash for login shells.  The following line
# runs your .bashrc and is recommended by the bash info pages.
if [[ -f ~/.bashrc ]] ; then
	. ~/.bashrc
fi

