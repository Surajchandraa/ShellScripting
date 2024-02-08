#!/bin/bash

# Write a script to rename all files in a directory with a specific extension (e.g., .txt) to have a .bak extension.

read -p "Enter directory path:: " path
read -p "Enter extension you want to change:: " ext1
read -p "Enter extension you want:: " ext2

if [ -d $path ];then 
    for file in "$path"/*"$ext1"
    do
    if [ -f $file ];then 
    
       
        without_extension=$(basename "$file" $ext1)
        mv "$file" "$without_extension"$ext2
    fi
    done
else
    echo "'$path' directory not exist"
    exit 0
    
fi

