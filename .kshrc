# Aqui se define la conducta propia de mksh
# (el PS1, su tipo de edicion, history size, etc)

export EDITOR=vim
export FCEDIT=$EDITOR
export HISTFILE=$HOME/.$( basename $SHELL )_history
export HISTSIZE=10240
export VISUAL=$EDITOR

export PS1='
$USER@$HOSTNAME
$( date )
$PWD

[!]$ '

set -o vi
set -o notify
set -o vi-tabcomplete

if [ $( uname -s ) == 'Linux' ]; then
	alias ls='ls --color=always'
	alias less='/usr/share/vim/vim74/macros/less.sh'
fi

if [ $( uname -s ) == "OpenBSD" ]; then
	PATH=$HOME/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games:.

	alias less='/usr/local/share/vim/vim73/macros/less.sh'

	export JAVA_HOME=/usr/local/jdk-1.7.0
	export PATH=${JAVA_HOME}/bin:${PATH}
fi

echo
fortune -a