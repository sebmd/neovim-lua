#!/usr/bin/env bash

# data w formacie 2023-01-05-00:30:20
DATA=$(date +%F-%T)

if [ $# != 0 ]; then
    cd "$(dirname $(readlink -m $1))"
fi

if [ "$(basename $0)" == "gps.sh" ]; then
    git add -A && git commit -S -m $DATA && git push
else
    git add -A && git commit -m $DATA && git push
fi
