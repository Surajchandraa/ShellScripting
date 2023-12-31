#!/bin/bash

str="Hi i am Suraj chandra Joshi Suraj"

echo "Length of string is" ${#str}

echo "Convert to uppercase:" ${str^^}
echo "Convert to lowercase:" ${str,,}

# Replace a string
newstr=${str/Suraj/user}  # Suraj will change to user
echo "Replace once:" $newstr

newstr=$(echo "$str" | sed 's/Suraj/user/g') # replace globally
echo "Replace globally:" $newstr


# Slice 
echo ${newstr:2:6}
echo ${newstr:2}