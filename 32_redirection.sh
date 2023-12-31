#!/bin/bash

<<info
ls > store.txt 
# The output of ls command will be stored in store.txt
# if you store other command value also than it will be overwritten
# pwd > store.txt
# overwritten

ls >> store.txt
# do not overwrite double greater than sign.
info

ping -c 1 www.google.com >> redirection_of_ping_cmd.log


<<info
in the case if you don't wanna print the output of a command on terminal or write in a file,
we can redirect the output to

/dev/null


example cd /root &> /dev/null