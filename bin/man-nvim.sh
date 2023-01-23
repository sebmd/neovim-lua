#!/usr/bin/env bash

if [ ! -f $HOME/.config/nvim/colors/ayu.vim ]; then
    curl --silent --create-dirs -Lo $HOME/.config/nvim/colors/ayu.vim https://raw.githubusercontent.com/ayu-theme/ayu-vim/master/colors/ayu.vim
fi

if [ $# -eq 0 ]; then
   /usr/bin/man
else
    if man -w $* >/dev/null 2>/dev/null; then
        /usr/bin/man $* | col -b | /usr/bin/nvim -u $HOME/.config/nvim/man.vim -
    else
        echo "Brak strony: $*"
    fi
fi
