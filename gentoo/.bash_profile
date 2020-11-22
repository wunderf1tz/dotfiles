# /etc/skel/.bash_profile

# This file is sourced by bash for login shells.  The following line
# runs your .bashrc and is recommended by the bash info pages.
if [[ -f ~/.bashrc ]] ; then
	. ~/.bashrc
fi
if [ "$(tty)" = "/dev/tty1" ]; then
	exec dbus-launch --sh-syntax --exit-with-session sway
fi
