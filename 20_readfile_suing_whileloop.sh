#!/bin/bash

while read myvar
do 
    echo $myvar
done < README.md  # write filename here which content you want to read
