#!/bin/bash

<<info
ls > store.txt 
// The output of ls command will be stored in store.txt
// if you store other command value also than it will be overwritten
// pwd > store.txt
//overwritten


ls >> store.txt
// do not overwrite double greater than sign .
info 

