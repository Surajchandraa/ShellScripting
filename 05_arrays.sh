#!/bin/bash
#
#Array

# Create array
myarr=(1 2 suraj "joshi is")


# print specific index element of array
echo ${myarr[0]}

# print whole array
echo ${myarr[*]}

# print length of array
echo ${#myarr[*]}


# print 2 values from index 1
echo ${myarr[*]:1:2} # here 1 is index and 2 is number of values you want to print if you dont give this parameter it will print all values from index 1

echo ${myarr[*]:1}


#Update array
myarr+=( NEW 9 8 6 )

echo "value of new array are" ${myarr[*]}