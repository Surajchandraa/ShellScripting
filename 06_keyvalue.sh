#!/bin/bash

# Store the key value pairs
# In this you can access specific elements with keys

# decleration
declare -A myarr

#intialization
myarr=( [name]="suraj" [age]=20 )

echo ${myarr[name]}
echo ${myarr[age]}
echo ${myarr[*]}