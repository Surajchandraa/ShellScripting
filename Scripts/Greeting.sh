#!/bin/bash

# Create a script that asks the user for their name and then prints a personalized greeting message.

read -p "please enter your name:: " name

hour=$(date +%H)

function greet {
    h=$1
    if [ $h -ge 5 ] && [ $h -lt 12 ]; then
        echo "Good morning" $name
    elif [ $h -ge 12 ] && [ $h -lt 18 ]; then
        echo "Good afternoon" $name
    else
        echo "Good evening" $name
    fi
}

greet $hour