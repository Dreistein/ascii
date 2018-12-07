#!/usr/bin/bash

# custom definitions
HEAD="\e[1;4;31m"
DECIMAL="\e[33m"
HEX="\e[36m"
CHAR="\e[31m"
SEPARATOR="\e[1;90m|\e[22m"
# ##################

sed -e 's/$C/'$(printf "$CHAR")'/g' ascii.txt | \
sed -e 's/$HX/'$(printf "$HEX")'/g' | \
sed -e 's/$T/'$(printf "$SEPARATOR")'/g' | \
sed -e 's/$D/'$(printf "$DECIMAL")'/g' | \
sed -e 's/$R/'$(printf "\e[0m")'/g' | \
sed -e 's/$HD/'$(printf "$HEAD")'/g' | \
less -R --chop-long-lines
