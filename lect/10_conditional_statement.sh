#!/bin/bash

read -p "enter marks" mark
if [ $mark -ge 80 ]
then 
    echo "you got a grade"
elif [ $mark -ge 60 ]
then
    echo "you got b grade"
else 
    echo "fail"
fi #end of the conditional statement


# -gt   -> greater than
# -eq/==   -> equal  -eq for the numeric comparison and == for string
# -ge   -> greaterthanequalto
# -le   -> lessthanequalto
# -ne/!=   -> not equal
# -lt   -> less than

