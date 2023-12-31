#!/bin/bash

echo "please provide an option"
echo "a for printing date"
echo "b for listing files"
echo "c for listing the file permissions"

# below the syntax of switch case is given


read choice

case $choice in
    a)date;;    
    b)ls;;
    c)
        echo "permissions are"  # to running multiple commands press enter after a case
        ls -l
        echo "end"
        ;;
    *)echo "input not match "
esac