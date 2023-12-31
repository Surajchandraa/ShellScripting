#!/bin/bash


<<info 
RANDOM- a random integer between 0 and 32767 is generated
UID - user id of the user logged in 

suraj@ubuntu:~/shellscripts$ echo $RANDOM
17470
suraj@ubuntu:~/shellscripts$ 

suraj@ubuntu:~/shellscripts$ echo $UID
1000
suraj@ubuntu:~/shellscripts$ sudo su
[sudo] password for suraj: 
root@ubuntu:/home/suraj/shellscripts# echo $UID
0
root@ubuntu:/home/suraj/shellscripts# 




info


#Generating a random number between 1 to 6

No=$(( $RANDOM%6 +1 ))
echo "number is $No"


# Checking if user is root user or not
if [ $UID -eq 0 ]
then 
    echo "you are root user"
else 
    echo "you are not root user"
fi