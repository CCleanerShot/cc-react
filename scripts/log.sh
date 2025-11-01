#!/usr/bin/env bash

Color_Reset='\e[0m'

Red='\e[0;41m'   
Green='\e[0;42m' 
Yellow='\e[0;43m' 


function error(){
    echo -e "${Red}Error ${Color_Reset}" "$*" >&2
    exit 1;
}

function info() {
    echo -e "$*"
}


function success() {
    echo -e "${Green}Success${Color_Reset} $*"
}
