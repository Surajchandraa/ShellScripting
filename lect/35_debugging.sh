#!/bin/bash

<<suraj
if we can enable the debugging of the script using below in script

set -x
suraj

set -x
no=32
if [ $no -eq $RANDOM ]
then    
    echo "found"
    exit 1
else 
    echo "not fouund"
    exit 1
fi

<<deb
bash 35_debugging.sh 
+ no=32
+ '[' 32 -eq 1025 ']'
+ echo 'not fouund'
not fouund
+ exit 1
deb


<<sete
if we want to exit our script when a command fail

use set -e at top
sete