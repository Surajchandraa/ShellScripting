#!/bin/bash

myarray=(suraj chandra 1 3)
length=${#myarray[*]} #length of array

for((i=0;i<length;i++))  #acessing all elements of array using for loop
do 
    echo "element at index $i = ${myarray[$i]}"
done