#!/usr/bin/env bash

      NC='\033[0m'
   BLACK='\033[0;30m'
  D_GREY='\033[1;30m'
     RED='\033[0;31m'
   L_RED='\033[1;31m'
   GREEN='\033[0;32m'
 L_GREEN='\033[1;32m'
  ORANGE='\033[0;33m'
  YELLOW='\033[1;33m'
    BLUE='\033[0;34m'
  L_BLUE='\033[1;34m'
  PURPLE='\033[0;35m'
L_PURPLE='\033[1;35m'
    CYAN='\033[0;36m'
  L_CYAN='\033[1;36m'
  L_GRAY='\033[0;37m'
   WHITE='\033[1;37m'

msg() {
    printf '%b\n' "$1" >&2
}

function msg_ok() {
    msg "${GREEN}[OK]${NC} ${1}${2}"
}

function msg_error() {
    msg "${RED}[ERROR]${NC} ${1}${2}"
}

function msg_warn () {
    msg "${YELLOW}[WARN]${NC} ${1}${2}"
}

function msg_info() {
    msg "${L_BLUE}[INFO]${NC} ${1}${2}"
}
