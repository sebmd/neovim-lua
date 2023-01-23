#!/usr/bin/env bash

PLIK=$HOME/tmp/git-pull-dry-run

mkdir -p $HOME/tmp

command -v bat > /dev/null

if [ $? == 0 ]; then
    BAT=1
    PAGER="bat --paging always"
else
    PAGER="less -X -E"
fi

git pull --dry-run 2> $PLIK

if [ -s $PLIK ]; then
    echo "Istnieją zmiany w zdalnym repozytorium Git"
    REMOTE=1
fi

if [ ! -z $REMOTE ]; then
    echo
    read -p "Czy chcesz pobrać zmiany w zdalnym repozytorium Git? [T/n] "
    case $REPLY in
        t|T)
            git pull
            ;;
        n|N)
            ;;
        *)
            git pull
    esac
fi

cd $(git rev-parse --show-toplevel)

if [ -z $BAT ]; then
    git status | $PAGER
    git diff | $PAGER
else
    git status | bat --paging always --pager cat
    git diff --name-only --diff-filter=d | xargs bat --diff --pager cat
fi
