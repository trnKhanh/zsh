#!/usr/bin/env zsh

###############################
# THIS SHOULD BE PUT IN $HOME #
###############################

# XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HOME/.local/state"

# editor
export EDITOR="nvim"
export VISUAL="nvim"

# zsh
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export ZDOTDIR_PLUGINS="$ZDOTDIR/.plugins"
export HISTFILE="$ZDOTDIR/.zhistory"
export HISTSIZE=10000
export SAVEHIST=10000

# other softwares
export VIMCONFIG="$XDG_CONFIG_HOME/nvim"
