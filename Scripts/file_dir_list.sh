#!/bin/bash

#Create a script to list all files and directories in the current directory.
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

read -p "Enter the directory path you want to check:: " path
function display_dir {
    echo "listing directories inside $path"
    for file in "$path"/*
    do
    if [ -d $file ];then
        echo -e "${RED} $(basename $file) ${NC}"
        
    fi
    done
}

function display_file {
    echo "listing files inside $path"
    for file in "$path"/*
    do 
    if [ -f $file ]; then
        echo -e "${GREEN} $(basename $file) ${NC}" 
    fi
    done
}
display_dir
display_file