#!/bin/bash

# arguments in script is you when while running script on terminal
# example bash 23_bashs.sh 23 43
# here 23 and 43 are arguments with script

echo "first argument is $1"
echo "second argument is $2"
echo "all arguments are $@"
echo "number of arguments is $#"


# run bash 24_argument_in_script.sh suraj chandra joshi 