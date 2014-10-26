# Aqui se define la conducta del entorno
# (locale, path, etc), tanto para las consolas como
# para X11

if [[ $( uname -s ) == "OpenBSD" ]]; then
	PATH=$HOME/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games:.

	alias less='/usr/local/share/vim/vim73/macros/less.sh'

	export JAVA_HOME=/usr/local/jdk-1.7.0
	export PATH=${JAVA_HOME}/bin:${PATH}

	export PATH HOME TERM
fi

export HOSTNAME=$( hostname )
export ENV=$HOME/.kshrc

export LANG=en_US.UTF-8
export LC_ALL=${LANG}
export LANGUAGE=${LANG}

if [[ $( uname -s ) == 'Linux' ]]; then
	alias ls='ls --color=always'
	alias less='/usr/share/vim/vim73/macros/less.sh'
fi

echo
fortune -a
