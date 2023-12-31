#!/bin/bash

read -p "Press 'd' to check directory or 'f' for file: " option

if [ "$option" = "f" ]; then 
    read -p "Enter file path: " path

    if [ -f "$path" ]; then 
        echo "File exists"
    else
        echo "File does not exist"
        exit 1
    fi
elif [ "$option" = "d" ]; then 
    read -p "Enter directory path: " path

    if [ -d "$path" ]; then 
        echo "Directory exists"
    else
        echo "Directory does not exist"
        exit 1
    fi
else 
    echo "Wrong option provided"
    exit 1
fi
