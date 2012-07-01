#!/bin/bash
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias q='exit'
alias p='cd ..'
alias c='clear'
alias b='cd -'
alias l=ll

alias pg='ps aux | grep '
alias sl=ls

alias gowork='cd ~/svn-projects/edusns_proj/edusns_swift'
alias startvnc='sudo x11vnc -forever -passwd jadelemon'
alias chrome='/opt/google/chrome/google-chrome --user-data-dir=/opt/google/chrome/data/ &'
alias jgrep="grep -rn5 --include='*.py' --exclude='*.log' --exclude-dir='swift'"
alias govs2='ssh zdvs2'

extract () {
   if [ -f $1 ] ; then
       case $1 in
	*.tar.bz2)	tar xvjf $1 && cd $(basename "$1" .tar.bz2) ;;
	*.tar.gz)	tar xvzf $1 && cd $(basename "$1" .tar.gz) ;;
	*.tar.xz)	tar Jxvf $1 && cd $(basename "$1" .tar.xz) ;;
	*.bz2)		bunzip2 $1 && cd $(basename "$1" /bz2) ;;
	*.rar)		unrar x $1 && cd $(basename "$1" .rar) ;;
	*.gz)		gunzip $1 && cd $(basename "$1" .gz) ;;
	*.tar)		tar xvf $1 && cd $(basename "$1" .tar) ;;
	*.tbz2)		tar xvjf $1 && cd $(basename "$1" .tbz2) ;;
	*.tgz)		tar xvzf $1 && cd $(basename "$1" .tgz) ;;
	*.zip)		unzip $1 && cd $(basename "$1" .zip) ;;
	*.Z)		uncompress $1 && cd $(basename "$1" .Z) ;;
	*.7z)		7z x $1 && cd $(basename "$1" .7z) ;;
	*)		echo "don't know how to extract '$1'..." ;;
       esac
   else
       echo "'$1' is not a valid file!"
   fi
 }


alias server='cd ~/svn-projects/edusns_proj/edusns_swift; python start-server.py ; b'
alias client='cd ~/svn-projects/edusns_proj/edusns_swift; python start-client.py; b'
alias uploader='cd ~/svn-projects/edusns_proj/edusns_swift; python start-swift_upload_server.py ; b'

alias apts='sudo apt-cache search'
alias apti='sudo apt-get install'
alias ga="git commit -a -m 'no message'"

alias backupbashrc='cp ~/.bash_aliases ~/git-projects/bootstrap/4-setting-up-bashrc/.bash_aliases'
alias pushbootstrap='cd ~/git-projects/bootstrap ; ga ; git push ; b'

alias installpythonpackage='python setup.py build; sudo python setup.py install'
alias updatesvn='svn up'
alias updateinstallpython='updatesvn; installpythonpackage'

alias golibjade='cd /home/jadesoul/git-projects/libjade'
alias installlibjade='golibjade; updateinstallpython; b'

alias goblackwidow='cd /home/jadesoul/svn-projects/black-widow-local'
alias installblackwidow='goblackwidow; updateinstallpython; b'

