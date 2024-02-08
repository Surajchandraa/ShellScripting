#!/bin/bash

#Write a script to display the contents of a file provided by the user as a command-line argument.

read -p "enter file name or path:: " name

if [ -z $name ];then 
    echo "please provide file name of path"
else
    content=$(cat $name)
    echo $content
fi