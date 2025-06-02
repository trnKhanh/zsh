#!/usr/bin/env zsh

# Move old .zshenv file to here and use the default .zshenv
mv $HOME/.zshenv ${$(pwd)}/.zshenv-old
ln -sf ${$(pwd)}/.zshenv $HOME/.zshenv

# Restart zsh
exec zsh
