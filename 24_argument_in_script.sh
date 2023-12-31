#!/bin/bash

# arguments in script is you when while running script on terminal
# example bash 23_bashs.sh 23 43
# here 23 and 43 are arguments with script

echo "first argument is $1"
echo "second argument is $2"
echo "all arguments are $@"  #$@ give list of all arguments
echo "number of arguments is $#"


# run bash 24_argument_in_script.sh suraj chandra joshi 

<<process_arg
for loop to process arguments
for args in $@
do 
    echo $args
done
process_arg