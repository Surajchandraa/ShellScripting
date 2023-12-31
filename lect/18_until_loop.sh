#!/bin/bash

# until loop is opposite of while loop it executes until condition is false.

a=10
until [ $a -eq 1 ] #when this condition becomes true loop ends
do 
    echo $a 
    let a--
done