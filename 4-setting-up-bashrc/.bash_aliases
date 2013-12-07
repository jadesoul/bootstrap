#!/bin/bash

# common utils
alias ll='ls -ahlF'
alias la='ls -A'
alias l='ls -aCFl'

alias q='exit'
alias p='cd ..'
alias c='clear'
alias b='cd -'
alias sl=ls

alias pg='ps -AfH | grep '
alias netspeed='sudo iptraf -g'
alias ng='netstat -anp | grep'

# tools for extraction
extract () {
	if [ -f $1 ] ; then
		case $1 in
		*.tar.bz2)		tar xvjf $1 && cd $(basename "$1" .tar.bz2) ;;
		*.tar.gz)		tar xvzf $1 && cd $(basename "$1" .tar.gz) ;;
		*.tar.xz)		tar Jxvf $1 && cd $(basename "$1" .tar.xz) ;;
		*.bz2)		bunzip2 $1 && cd $(basename "$1" /bz2) ;;
		*.rar)		unrar x $1 && cd $(basename "$1" .rar) ;;
		*.gz)		gunzip $1 && cd $(basename "$1" .gz) ;;
		*.tar)		tar xvf $1 && cd $(basename "$1" .tar) ;;
		*.tbz2)		tar xvjf $1 && cd $(basename "$1" .tbz2) ;;
		*.tgz)		tar xvzf $1 && cd $(basename "$1" .tgz) ;;
		*.zip)		unzip $1 && cd $(basename "$1" .zip) ;;
		*.Z)			uncompress $1 && cd $(basename "$1" .Z) ;;
		*.7z)		7z x $1 && cd $(basename "$1" .7z) ;;
		*)			echo "don't know how to extract '$1'..." ;;
		esac
	else
		echo "'$1' is not a valid file!"
	fi
}
 
# tools for apt get
alias apts='sudo apt-cache search'
alias apti='sudo apt-get install'
alias aptr='sudo apt-get remove'

alias py='ipython -i'
#----------------------------------------------------------------------------------

export PATH=~/bin:$PATH
export LD_LIBRARY_PATH=~/lib:$LD_LIBRARY_PATH
export INCLUDE_PATH=~/include:$INCLUDE_PATH
export LANG="zh_CN.UTF-8"
export LC_COLLATE="C"


alias gl='git log'
alias gb='git branch -av'
alias gs='git show'
alias gst='git status'
alias gsb='git show-branch -a'
alias gr='git remote -v'
alias gd='git diff'
alias ga='git add'
alias gm='git merge'
alias gmd='gm desktop'

gi () {
	echo '-------------------diff begin----------------------'
	git diff --exit-code --color=auto
	echo '--------------------diff end-----------------------'
	echo please input commit message:
	read msg
	if [ ! $msg ]; then
		echo abort for no message
		return
	fi
	echo git commit -a -m "'$msg'"
	git commit -a -m "$msg"
}

alias ng='netstat -anp | grep '
alias gbk2utf='iconv -f gbk -t utf8'
alias utf2gbk='iconv -f utf8 -t gbk'


alias fixqx='find . -type f -exec chmod 644 {} \; ; find . -type d -exec chmod 755 {} \;'
