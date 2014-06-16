if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

if [[ $( uname -s ) == "OpenBSD" ]]; then
	PATH=$HOME/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games:.
	export PATH HOME TERM

	export JAVA_HOME=/usr/local/jdk-1.7.0
	export PATH=${JAVA_HOME}/bin:${PATH}
fi

export HOSTNAME=$( hostname )
export ENV=$HOME/.kshrc

export PERL5LIB=.:$HOME/lib

echo
fortune -a
