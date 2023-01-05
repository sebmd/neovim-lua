#!/usr/bin/env bash

CONFIG=~/.config/nvim/lua/custom/pluginy.lua
TRUE="use({ \"nvim-treesitter\/nvim-treesitter\", disable = true })"
FALSE="use({ \"nvim-treesitter\/nvim-treesitter\", disable = false })"

grep "$TRUE" $CONFIG > /dev/null
if [ $? == 0 ]; then
    sed -i "s/${TRUE}/${FALSE}/g" $CONFIG
else
    sed -i "s/${FALSE}/${TRUE}/g" $CONFIG
fi
