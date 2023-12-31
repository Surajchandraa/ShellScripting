#!/bin/bash

# infinite loop runs infinite time or runs until you press ctrl+c

while true  
do 
    date
    sleep 1s # delay of 2s between each iteration
    clear
done

<<infinite_for_loop

for ((;;))
do 
    echo "hi"
    sleep 3s
done
infinite_for_loop