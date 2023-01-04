#!/usr/bin/env bash

DATA=$(date +%F-%T)

if [ $# != 0 ]; then
    cd "$(dirname $(readlink -m $1))"
fi

if [ "$(basename $0)" == "gps" ]; then
    git add -A && git commit -S -m $DATA && git push
else
    git add -A && git commit -m $DATA && git push
fi
