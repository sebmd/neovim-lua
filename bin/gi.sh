#!/usr/bin/env bash

# INFO: Skrypt pobierający informacje o repozytorium Git

KATALOG="$(dirname $(readlink -m $0))"
SKRYPT="$(basename $(readlink -m $0))"
FULL_FILE_NAME=$KATALOG/$SKRYPT

. $HOME/bin/colors

git rev-parse --show-toplevel >/dev/null 2>&1
if [ ! "$?" -eq 0 ]; then
    msg_info "To nie jest repozytorium Git"
    exit
fi

cd $(git rev-parse --show-toplevel)

msg_info "DIR: $(git rev-parse --show-toplevel)"

grep url .git/config >/dev/null 2>&1
if [ $? == 0 ]; then
    URL=$(grep url .git/config | cut -f 2 -d '=' | tr -d ' ')
    msg_info "REPO: $URL "
fi

grep name .git/config >/dev/null 2>&1
if [ $? == 0 ]; then
    NAME=$(grep name .git/config | cut -f 2 -d '=' | tr -d ' ')
    msg_info "USER:  $NAME"
else
    msg_error "USER:  Brak informacji o koncie użytkownika."
fi

grep email .git/config >/dev/null 2>&1
if [ $? == 0 ]; then
    EMAIL=$(grep email .git/config | cut -f 2 -d '=' | tr -d ' ')
    msg_info "EMAIL: $EMAIL"
else
    msg_error "EMAIL: Brak informacji o adresie e-mail użytkownika."
fi
