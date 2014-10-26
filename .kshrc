# Aqui se define la conducta propia de mksh
# (el PS1, su tipo de edicion, history size, etc)

export EDITOR=vim
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
