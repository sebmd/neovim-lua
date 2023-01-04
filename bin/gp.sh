#!/usr/bin/env bash

DATA=$(date +%F-%T)

if [ $# != 0 ]; then
    echo elementów jest $#
else
    echo elementów jest $# (else)
fi
exit
cd "$(dirname $(readlink -m $1))"

if [ "$(basename $0)" == "gps" ]; then
    git add -A && git commit -S -m $DATA && git push
else
    git add -A && git commit -m $DATA && git push
fi
