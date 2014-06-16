export EDITOR=vi
export FCEDIT=$EDITOR
export HISTFILE=$HOME/.$( basename $SHELL )_history
export HISTSIZE=10240

export PS1='
$USER@$HOSTNAME
$( date )
$PWD

[!]$ '
export VISUAL=$EDITOR

set -o vi
set -o notify
set -o vi-tabcomplete

if [[ $( uname -s ) == 'Linux' ]]; then
	alias ls='ls --color=always'
	alias less='/usr/share/vim/vim73/macros/less.sh'

	#export LANG=en_US.UTF-8
	#export LC_ALL=${LANG}
fi

if [[ $( uname -s ) == 'OpenBSD' ]]; then
	alias less='/usr/local/share/vim/vim73/macros/less.sh'
	export LANG=en_US.UTF-8
	export LC_ALL=${LANG}
fi
