#!/usr/bin/env zsh

alias l="ls -l"
alias la="ls -al"
alias ls="lsd --header"
alias tree="lsd --tree"

alias o="open ."
alias publicip="dig -4 TXT +short o-o.myaddr.l.google.com @ns1.google.com"
alias privateip="ipconfig getifaddr en0"
alias aseprite="/Users/namkhanhtran/programming/repo/aseprite/build/bin/aseprite"

google() {
    search=""
    echo "Googling: $@"
    for term in $@; do
        search="$search%20$term"
    done
    open "http://www.google.com/search?q=$search"
}

