#!/bin/bash

# script to show how to use variables
#
a=10
name="suraj chandra"
age=28

# printing the values of variables on shell
echo $a $name $age


# variables can be modified 
name="suraj"

echo "my name is" $name

# variable to store the output of a command
#
HOSTNAME=$(hostname) # this is not direct execution of command with echo, in this command's output is storing in variable.
echo $HOSTNAME

echo $(hostname) #this is direct execution of the command
