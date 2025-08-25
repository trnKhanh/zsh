#!/usr/bin/env zsh

# Set max number of opened files to 500
ulimit -n 500

setopt EXTENDED_HISTORY
setopt SHARE_HISTORY
unsetopt HIST_SAVE_NO_DUPS 
