#!/bin/bash

# Create a script to check whether a given number is even or odd.
while true
do
    read -p "Enter a number (type 'exit' to quit): " number
    if [[ -z "$number" ]]; then
        echo "Number not provided."
    elif [[ "$number" == "exit" ]]; then
        echo "Exiting..."
        exit 0
    elif ! [[ "$number" =~ ^[0-9]+$ ]]; then
        echo "Invalid input. Please enter a valid number."
    else
        if [ $((number % 2)) -eq 0 ]; then
            echo "$number is even"
        else 
            echo "$number is odd"
        fi
    fi
done


