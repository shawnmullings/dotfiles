
# tmux on launch
#if command -v tmux>/dev/null; then
# [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux #new -s 'vim' #&& tmux split-window -v 'ipython' && tmux split-window -h && tmux new-window 'mutt' && tmux -2 attach-session -d
#fi

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
export PATH=$PATH:/usr/local/mysql/bin

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash ] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bashsource /Users/shawnmullings/perl5/perlbrew/etc/bashrc
