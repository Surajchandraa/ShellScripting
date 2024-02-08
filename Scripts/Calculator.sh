#!/bin/bash

#Write a script to calculate the sum of two numbers provided by the user as command-line arguments.

read -p "Enter first number:: " num1
read -p "Enter second number:: " num2
read -p "Enter operator:: " oper

function calc {
    c=$(($num1 $oper $num2))
    echo $c
}

calc