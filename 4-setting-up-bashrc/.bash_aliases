alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias q='exit'
alias p='cd ..'
alias c='clear'
alias b='cd -'
alias n=vi
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

alias golibjade='cd ~/svn-projects/black-widow/libspider/libjade'

alias server='cd ~/svn-projects/edusns_proj/edusns_swift; python start-server.py ; cd -'
alias client='cd ~/svn-projects/edusns_proj/edusns_swift; python start-client.py; cd -'
alias uploader='cd ~/svn-projects/edusns_proj/edusns_swift; python start-swift_upload_server.py ; cd -'

alias apts='sudo apt-cache search'
alias apti='sudo apt-get install'
alias ga="git commit -a -m 'no message'"

