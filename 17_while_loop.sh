#!/bin/bash

count=0;
num=10;

while [ $count -le $num ]
do # starting of while loop
    echo "numbers are $count" 
    let count++  #let keyword wont initialize count variable again
done #ending of while loop

