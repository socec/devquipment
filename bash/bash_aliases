# This file should be automatically pulled in by .bashrc
# so let's use it and configure some details.
# ======================================================

# Color tags
GREEN="\[\e[1;32m\]"
RED="\[\e[1;31m\]"
PURPLE="\[\e[1;35m\]"
BLUE="\[\e[1;34m\]"
END="\[\e[0m\]"

# Git tag
hash git 2>/dev/null
if [ $? == 0 ]; then
	GIT="\$(__git_ps1 \"(%s)\")"
fi

# Nice prompt, use different color for root
if [ "`id -u`" -eq 0 ]; then
    export PS1="$RED\u@\h:$BLUE\W$PURPLE$GIT$END\$ "
else
    export PS1="$GREEN\u@\h:$BLUE\W$PURPLE$GIT$END\$ "
fi

# ======================================================

# Aliases
alias ls="ls --color=auto"
alias l="ls -l"
alias ll="ls -la"
alias vi="vim"

# Exports
export EDITOR="vim"

# ======================================================

# Use "$HOME/bin" for private executables
PATH=$HOME/bin:$PATH

# Use "$HOME/.devquipment" for bash extensions to source
EXTENSIONDIR="$HOME/.devquipment/"
if [ -d $EXTENSIONDIR ]; then
    for extension in $(ls $EXTENSIONDIR); do source $EXTENSIONDIR/$extension; done
fi
