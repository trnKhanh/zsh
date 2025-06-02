#!/usr/bin/env zsh

PLUGINS_DIR=${ZDOTDIR_PLUGINS}

clone_repo() {
    REMOTE_REPO=$1
    REPO_NAME=${${(@s:/:)REMOTE_REPO}[2]}
    local REMOTE_URL="https://github.com/$REMOTE_REPO"
    local LOCAL_REPO="$PLUGINS_DIR/$REPO_NAME"
    git clone $REMOTE_URL $LOCAL_REPO 2> /dev/null
}

clone_repo "zsh-users/zsh-autosuggestions"
source $PLUGINS_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh

clone_repo "zsh-users/zsh-syntax-highlighting"
source $PLUGINS_DIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Completion
clone_repo "zsh-users/zsh-completions"

fpath=($PLUGINS_DIR/zsh-completions/src $fpath)
autoload -U compinit; compinit
_comp_options+=(globdots)

