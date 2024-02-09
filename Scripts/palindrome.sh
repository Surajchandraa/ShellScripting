#!/bin/bash

# Function to check if a number is a palindrome
is_palindrome() {
    # Convert the number to a string
    num_str="$1"

    # Reverse the string
    reversed_str=$(echo "$num_str" | rev)

    # Compare the original and reversed strings
    if [ "$num_str" == "$reversed_str" ]; then
        echo "$1 is a palindrome"
    else
        echo "$1 is not a palindrome"
    fi
}

read -p "Enter a number: " number


is_palindrome "$number"
