#!/usr/bin/env bash

LISTA=$(grep "enabled = true" ~/.config/nvim/lua/plugins/init.lua | awk '{ print $2 }' | tr -d \" | tr -d , | fzf)

if [ -z $LISTA ]; then
    exit
else
    echo $LISTA
fi
