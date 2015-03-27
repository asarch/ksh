# Aqui se define la conducta del entorno (locale, path, etc)
# tanto para las consolas como para X11

export LANG=en_US.UTF-8
export LC_ALL=${LANG}
export LANGUAGE=${LANG}

export PATH=$HOME/bin:${PATH}
export PERL5LIB=.:${HOME}/lib

export HOSTNAME=$( hostname )
export ENV=$HOME/.kshrc