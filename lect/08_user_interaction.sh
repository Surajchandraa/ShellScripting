#!/bin/bash


#User interaction is taking input from user through shell or terminal

# take input and store in name variable than print it
read name
echo "you name is" $name


# take input with some text shown on shell and store input in name variable
read -p "what is your name::" name 
echo "hi " $name

#or 
echo "enter your name::"
read name