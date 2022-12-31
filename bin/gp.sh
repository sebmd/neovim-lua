#!/usr/bin/env bash

DATA=$(date +%F-%T)

cd "$(dirname $(readlink -m $1))"

if [ "$(basename $0)" == "gps" ]; then
    git add -A && git commit -S -m $DATA && git push
else
    git add -A && git commit -m $DATA && git push
fi
