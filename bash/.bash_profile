# bashrc
if [ -f "$HOME/.bashrc" ] ; then
    . ~/.bashrc
fi

# z.sh
if [ -f "$HOME/.zsh" ] ; then
    . "$HOME/.zsh"
fi

# functions
if [ -f "$HOME/.functions" ] ; then
    . "$HOME/.functions"
fi

# alias
if [ -f "$HOME/.alias" ] ; then
    . "$HOME/.alias"
fi

# platform specific aliases
if [ -f "$HOME/.platform" ] ; then
    . "$HOME/.platform"
fi

# git-completion
if exists brew; then
    if [ -f "$(brew --prefix)/etc/bash_completion" ] ; then
        . "$(brew --prefix)/etc/bash_completion"
    fi
fi

# git flow completion
if [ -f "$HOME/bin/.git-flow-completion.sh" ] ; then
    . "$HOME/bin/.git-flow-completion.sh"
fi


# scripts
if [ -f "$HOME/.scripts" ] ; then
    . "$HOME/.scripts"
fi

PS1="\[$DIRECTORY_COLOR\]\w \[$GIT_COLOR\]\$(parse_git_branch)\[$STAGED_COLOR\]\$(gitstaged)\[$MODIFIED_COLOR\]\$(gitmodified)\[$UNTRACKED_COLOR\]\$(gituntracked)\[$RESET_COLOR\]\n\[$USER_COLOR\]\u\[$RESET_COLOR\]@\[$HOST_COLOR\]\h\[$PROMPT_COLOR\]→ \[$RESET_COLOR\]"

PATH="/usr/local/mysql/bin:$PATH"

# vim: set sw=4 ts=4 sts=4 et tw=78 nospell:

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/shawnmullings/Downloads/google-cloud-sdk/path.bash.inc' ]; then source '/Users/shawnmullings/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/shawnmullings/Downloads/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/shawnmullings/Downloads/google-cloud-sdk/completion.bash.inc'; fi
# Added by install_latest_perl_osx.pl
[ -r /Users/shawnmullings/.bashrc ] && source /Users/shawnmullings/.bashrc
