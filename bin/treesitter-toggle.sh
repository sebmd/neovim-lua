#!/usr/bin/env bash

CONFIG=~/.config/nvim/lua/plugins/init.lua
TRUE="{ \"nvim-treesitter\/nvim-treesitter\", enabled = true },"
FALSE="{ \"nvim-treesitter\/nvim-treesitter\", enabled = false },"

grep "$TRUE" $CONFIG > /dev/null
if [ $? == 0 ]; then
    sed -i "s/${TRUE}/${FALSE}/g" $CONFIG
else
    sed -i "s/${FALSE}/${TRUE}/g" $CONFIG
fi
