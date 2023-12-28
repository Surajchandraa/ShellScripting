#!/bin/bash

addition(){
    echo "first argument is $1"
    echo "second argument is $2"
    sum=$(($1+$2))
    echo "sum is $sum"

}

addition 20 30