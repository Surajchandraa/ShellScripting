#!/bin/bash

# Prompting the user for weight and height inputs
read -p "Enter your weight (in kg): " weight
read -p "Enter your height (in cm): " height

# Checking eligibility criteria for different rides
if [ $weight -ge 60 ] && [ $height -ge 150 ]; then  # and operator
    echo "You are eligible for the roller coaster ride."
elif [ $weight -ge 50 ] && [ $height -ge 130 ]; then  
    echo "You are eligible for the ferris wheel ride."
elif [ $weight -ge 40 ] || [ $height -ge 120 ]; then #or operator
    echo "You are eligible for the carousel ride."
else
    echo "Sorry, you do not meet the criteria for any rides."
fi


# &&  -> And operator
# ||  ->  Or operator
# !  -> Not operator