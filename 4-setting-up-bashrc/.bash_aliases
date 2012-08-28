#!/bin/bash

# exports
export ROOT=~
export GIT_ROOT=$ROOT/git-projects
export SVN_ROOT=$ROOT/svn-projects
export EDUSNS_SWIFT=$SVN_ROOT/edusns_proj/edusns_swift


# common utils
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias q='exit'
alias p='cd ..'
alias c='clear'
alias b='cd -'
alias l=ll
alias sl=ls

alias pg='ps aux | grep '
alias netspeed='sudo iptraf -g'

alias jgrep="grep -rn5 --include='*.py' --exclude='*.log' --exclude-dir='swift'"
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
alias aptu='sudo apt-get update'

# tools for python
installpythonpackage () {
	python setup.py build
	sudo python setup.py install
}

# tools for git
alias gogitroot="cd $GIT_ROOT"

gitget () {
	git clone git@github.com:jadesoul/$1.git
}

gogitproj () { 
	cd $GIT_ROOT/$1
}

gitpull () {
	gogitproj $1
	git pull
	b
}

ga () {
	msg="$1"
	if [ ! $msg ]; then
		msg='aha, no message'
	fi
	git commit -a -m $msg
}

gitpush () {
	gogitproj $1
	ga
	git push
	b
}

installpythonpackagefromgit () {
	gogitproj $1
	installpythonpackage
	b
}

updateinstallpythonpackagefromgit () {
	PWD=`pwd`
	gogitroot
	if [ -d $1 ]; then
		gitpull $1
	else
		gitget $1
	fi
	installpythonpackagefromgit $1
	cd $PWD
} 

backupbashrc () {
	cp ~/.bash_aliases $GIT_ROOT/bootstrap/4-setting-up-bashrc
}

alias getbootstrap='gitget bootstrap'
alias gobootstrap='gogitproj bootstrap'
alias pullbootstrap='gitpull bootstrap'
alias pushbootstrap='gitpush bootstrap'

alias getlibjade='gitget libjade'
alias golibjade='gogitproj libjade'
alias pulllibjade='gitpull libjade'
alias pushlibjade='gitpush libjade'
alias installlibjade='installpythonpackagefromgit libjade'
alias updateinstalllibjade='updateinstallpythonpackagefromgit libjade'

alias getblackwidow='gitget blackwidow'
alias goblackwidow='gogitproj blackwidow'
alias pullblackwidow='gitpull blackwidow'
alias pushblackwidow='gitpush blackwidow'

# tools for svn
alias gosvnroot="cd $SVN_ROOT"
alias updatesvn='svn up'

gosvnproj () {
	cd $SVN_ROOT/$1
}

installpythonpackagefromsvn () {
	gosvnproj $1
	installpythonpackage
	b
}

updateinstallpythonpackagefromsvn () {
	gosvnproj $1
	updatesvn
	installpythonpackage
	b
}

alias goblackwidowlocal='gosvnproj black-widow-local'
alias installblackwidowlocal='installpythonpackagefromsvn black-widow-local'
alias updateinstallblackwidowlocal='updateinstallpythonpackagefromsvn black-widow-local'

testblackwidowlocal () {
	goblackwidowlocal
	cd tests/spiders
	python test.py
}

# for work
alias sqlite3=/home/zd/software/sqlite/sqlite-autoconf-3071300/sqlite3
alias govs2='ssh root@zdvs2'

alias goswift='cd $EDUSNS_SWIFT'
alias goswiftdev='cd ${EDUSNS_SWIFT}_dev'
alias gowork=goswift

alias deployswift='goswift; bash deploy.sh'
alias updateswift='goswift; bash update.sh'
 
alias server='goswift; python start-server.py'
alias debugserver='goswift; updateswift; server'

alias client='goswift; python start-client.py'
alias debugclient='goswift; for x in {1..100000}; do client; done'

alias uploader='goswift; python start-swift_upload_server.py'
alias showtimewait='ng 9090'

grepserverlog () {
	grep -n5 "$1" $EDUSNS_SWIFT/server-v3.log
}
