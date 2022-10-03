#
## Software
#
# Git 
alias 	gi='git init' \
	ga='git add' \
	gc='git commit -m' \
	gp='git push' \
	gd='git diff' \
	gpu='git pull' \
	gl='git log --oneline' \
        glp='git log -p' \
	gch='git checkout' 
        hc='hub create' \
	gpo='git push origin HEAD' \
	hc='hub create'
#  && sleep 2 && bluetoothctl connect 0A:11:75:33:AF:3D && pactl set-card-profile 0 off
# Media
alias 	btch='bluetoothctl connect 38:18:4C:96:74:03' \
	btca='bluetoothctl connect 0A:11:75:33:AF:3D' \
	btcb='bluetoothctl connect 00:12:6F:D9:29:47' \
	btcp='bluetoothctl connect 20:A6:0C:33:D4:72' \
	btcm='bluetoothctl connect D8:30:62:3D:2A:36' \
	btcs='bluetoothctl connect 00:0E:DD:09:2C:3C' \
	btck='bluetoothctl connect F2:B0:0F:00:06:F8' \
	btd='bluetoothctl devices' \
	bth='bluetoothctl help' \
	bts='bluetoothctl scan' \
	btp='bluetoothctl pair' \
	btcc='bluetoothctl connect' \
	btdc='bluetoothctl disconnect' \
	screen='wf-recorder --audio --file=$(date +%d-%m-%Y_%H-%m).mp4 -g "$(slurp)"' \
	hdmi='pactl set-card-profile 0 output:hdmi-stereo'
# Pandoc
alias 	pandoc='sh ~/bin/doc2dw.sh'

# Sway
alias 	swdis='swaymsg -t get_outputs' \
	swconfig='sudo nvim /home/simon/.config/sway/config'

# Science

alias	jasp='flatpak run org.jaspstats.JASP' \
	doktorarbeit='cd ~/Dokumente/Job/Latex && nvim SM_Dissertation.tex && gdoc' \
	hausarbeit='nvim Dokumente/Uni/LB\ III\ +\ IV/hausarbeit_geriatrie/definition_geriatrischer_patient.tex'

	
# VimtexTocOpen 
# Android
alias 	adbpush='adb push /home/simon/Android/* /storage/6537-6330/' \
	adbserver='adb -P 33301 start-server && adb connect 192.168.0.208:33301 && sleep 1 && adb devices' \
	adbconnect='adb connect 192.168.178.34:5555'
# Tablet: adb push ~/Dokumente/Uni/Ebooks /storage/2287-180E/Ebooks/
# Android Geräteverzeichnis Herausfinden adb shell && cd storage && ls
#
## System
#
# bash, vim
# python3 -m pip install --user --upgrade PACKAGE
alias 	short='sudo nvim /home/simon/bin/.bash_aliases' \
	shortup='source ~/.bashrc' \
	lt='ls --human-readable --size -1 -S --classify' \
	la='ls -a' \
	vi='sudo nvim'\
	vim='nvim'  \
	list5='sudo ps aux | sort -nk +4 | tail -5' \
	ps='PS1=' \
	2h='sudo shutdown -h 120' \
	1h='sudo shutdown -h 60' \
	now='sudo shutdown -h now' \
	exta='sudo cryptsetup luksOpen /dev/sda1 ext' \
	extb='sudo cryptsetup luksOpen /dev/sdb1 ext' \
	extc='sudo cryptsetup luksOpen /dev/sdc1 ext' \
	mntext='sudo mount /dev/mapper/ext /home/simon/ext' \
	unext='sudo umount /dev/mapper/ext && sudo cryptsetup luksClose ext' \
	freemb='df -m'
	

## gentoo 

# Portage/Equery 
alias	accept='sudo nvim /etc/portage/package.accept_keywords' \
	packageuse='sudo nvim /etc/portage/package.use/' \
	ema='sudo emerge -aq' \
	ems='sudo emerge -s' \
	emp='sudo emerge -p' \
	emd='sudo emerge --deselect' \
	emr='sudo emerge --ask @module-rebuild' \
	emdeprobe='sudo emerge --depclean -vp' \
	emdepreal='sudo emerge --depclean -v' \
	emsync='sudo emerge --sync' \
	emup='sudo emerge -uDU --ask --keep-going --quiet --with-bdeps=y @world' \
	emup2='sudo emerge -uDU --keep-going --quiet --with-bdeps=y @world' \
	conf='sudo dispatch-conf'

alias 	eqf='equery f' \
	equ='equery u' \
	eqh='equery h' \
	eqa='equery a' \
	eqb='equery b' \
	eql='equery l' \
	eqd='equery d' \
	eqg='equery g' \
	eqc='equery c' \
	eqk='equery k' \
	eqm='equery m' \
	eqy='equery y' \
	eqs='equery s' \
	eqw='equery w'

# Kernel
alias 	cleankernel='sudo eclean-kernel -n 3 --ask' \
	dmesgl='dmesg -w' \
	copyold='cp /usr/src/linux/.config ~/kernel-config-$(uname -r)' \
	selectkernel='eselect kernel list'\
	setkernel='eselect kernel set' \
	linknewkernel='echo Enter new Linux Kernel version: ; read kernel; ln -sf /usr/src/linux-$kernel-gentoo /usr/src/linux' \
	srclinux='cd /usr/src/linux' \
	copynew='cp ~/kernel-config-$(uname -r) /usr/src/linux/.config' \
	srclinux='cd /usr/src/linux' \
	olddef='sudo make olddefconfig' \
	makej8='sudo make -j8 && su' \
	modules='make modules_install' \
	mountboot='sudo mount /dev/nvme0n1p1 /boot' \
	mkinstall='make install' \
	grubcfg='sudo grub-mkconfig -o /boot/grub/grub.cfg' \
	delkerne='emerge --unmerge "<sys-kernel/gentoo-sources-X"' #Delete Kernels prior to X

# Backup
alias	backup='sudo mkstage4 -s $(date +"%Y-%m")' \
	backuphomedry='rsync -ravzhXn /home/simon /run/media/simon/ext/Backup/rsync/home/ -delete' \
	bkhome='sudo rsync -aAXxvP --delete /home/simon/ /run/media/simon/ext/Backup/rsync/home/' \
	tarit='tar -czvf' \
	untarit='tar -xzvf' 

#then filename.tar.gz /path/to/dir1 dir2 file1 file2
#then filename.tar.gz (extract here) or filename.tar.gz -C /path/to/extract

# QEMU
alias	windows='sudo sh vm.sh -boot d -drive file=Win10.iso,media=cdrom -drive file=virtio-win-0.1.190.iso,media=cdrom' \
	libvirt='sudo /etc/init.d/libvirtd restart'

alias 	gdoc='git add . && git commit -m $(date +"%Y-%m-%d_%H:%M") && git push' \
## Commands to remember

# ls -l > output = overwrite everything in output
# ls -l >> output = add output of ls -a to the file output
# rg -i [ITEM2SEARCH]
# play

alias 	tag='echo $(date +"%Y-%m-%d_%H:%M")' 

alias 	filer='read file; nvim $file' \
	folder='read folder; mkdir $folder; cd $folder'	\
	
######## Portage Hacks #########

#equery belongs $FILE -> sucht nach dem Paket zu der die Datei gehört

######## VIM-HACKS #############

#nvim shortcuts:
# toggle between tabs: gt
# change the default application to open files:
# sudo nvim /home/simon/.config/mimeapps.list


######## Open-RC ################

# sudo rc-service <service> restart/status/start/stop
# sudo rc-update add/del <service> <runlevel (default) 
# restart service with rc: sudo rc-service bluetooth status && sudo rc-service bluetooth stop && sudo rc-service bluetooth start

########## CRONJOBS #############

# Alle 5 Minuten z.b. vdirsyncer ausführen: crontab -e & */5 * * * * /usr/bin/vdirsyncer sync 
#*     *     *     *     *  Befehl der ausgeführt werden soll
#-     -     -     -     -
#|     |     |     |     |
#|     |     |     |     +----- Wochentag (0 - 7) (Sonntag ist 0 und 7; oder Namen, siehe unten)
#|     |     |     +------- Monat (1 - 12)
#|     |     +--------- Tag (1 - 31)
#|     +----------- Stunde (0 - 23)
#+------------- Minute (0 - 59; oder Namen, siehe unten)

########## Ranger Hacks #########


##### RANDOM SHELL HACKS ########

# so startet man einen Prozess im Hintergrund: z.b. "waybar &" dann "jobs" (Zahl merken) dann "disown -h %Zahl" Zahl z.b. 1
# Wlan Karte anzeigen lassen: nmcli radio / ausschalten: nmcli radio on/off
# bz2 Dateien entpacken: bzip2 -dk file.bz2
#Search and replace all + with , :%s/+/,/g -> falls backslash mit drin: :%s/\\+/,/g
#tar commands: -c create archive -z pipe to gzip (compress/decompress) -v verbose -f use archive file 

##### Kontakte/Kalender Khard/Khal

# nach Kontakt suchen: khard ls $Name
