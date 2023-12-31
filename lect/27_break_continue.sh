#!/bin/bash


#break statement example
no=6

for i in {1..10}
do 
    if [ $no -eq $i ]
    then   
        echo "$no is found"
        break
    fi
    echo "number is $i"
done


# continue statement example
#printing only odd numbers
echo " "

for i in {1..20}
do
    let r=$i%2
    if [ $r -eq 0 ]
    then continue
    fi
    echo "odd no is $i"
done