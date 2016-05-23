# environment
if [ -f "$HOME/.environment" ] ; then
    . "$HOME/.environment"
fi

# perlbrew
if [ -f "$HOME/perl5/perlbrew/etc/bashrc" ] ; then
    . "$HOME/perl5/perlbrew/etc/bashrc"
fi

# rvm paths
if [ -s "$HOME/.rvm/scripts/rvm" ] ; then
    . "$HOME/.rvm/scripts/rvm"
fi

# FZF really wants to put this in this file
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# allow for .bash_local overrides
if [ -f "$HOME/.bash_local" ] ; then
    . "$HOME/.bash_local"
fi

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export NODE_PATH=/usr/local/lib/jsctags:/usr/local/lib/node:/usr/bin/npm:/usr/local/lib/node_modules
export NODE_PATH=/usr/local/lib/jsctags:/usr/local/lib/node:/usr/bin/npm:/usr/local/lib/node_modules:/usr/local/lib/node_modules
export NODE_PATH=/usr/local/lib/jsctags:/usr/local/lib/node:/usr/bin/npm:/usr/local/lib/node_modules:/usr/local/lib/node_modules:/usr/local/lib/node_modules
export NODE_PATH=$NODE_PATH:/usr/local/lib/node_modulesexport NODE_PATH=/usr/local/lib/jsctags:/usr/local/lib/node:/usr/bin/npm:/usr/local/lib/node_modules:/usr/local/lib/node_modules:/usr/local/lib/node_modules:/usr/local/lib/node_modules:/Users/shawnmullings/.node/lib/node_modules
