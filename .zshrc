#!/usr/bin/env zsh

source $ZDOTDIR/keybinds.zsh
source $ZDOTDIR/aliases.zsh
source $ZDOTDIR/opts.zsh
source $ZDOTDIR/plugins.zsh


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/namkhanhtran/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/namkhanhtran/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/namkhanhtran/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/namkhanhtran/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# >>> nvm initialize >>>
export NVM_DIR="$HOME/.nvm"
    [ -s "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" ] && \. "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" # This loads nvm
    [ -s "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

setopt extendedglob
# <<< nvm initialize <<<

# >>> starship initialize >>>
eval "$(starship init zsh)"
# <<< starship initialize <<<
