#!/bin/bash

# Create a script to find and display the largest number from a list of numbers provided as command-line arguments.


if [ $# -eq 0 ];then
    echo "please provide arguments"
    exit 1
fi

largest=$1

for num in $@
do 
    if [ $num -gt $largest ];then 
    largest=$num
    fi
done


echo "the largest number is" $largest