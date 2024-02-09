#!/bin/bash

# Write a script to count the number of occurrences of a specific word in a text file provided by the user.

if [ "$#" -eq 0 ]; then
    echo "Please provide a file path."
    exit 1
else
    
    data=$(cat "$1")
fi


read -p "Enter the word to count occurrences of: " word


 count=0


for w in $data
 do
    
    if [ "$w" == "$word" ]; then
        ((count++))
    fi
done


 echo "The number of occurrences of '$word' in the file is: $count"

