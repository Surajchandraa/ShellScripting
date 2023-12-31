#!/bin/bash

# exit status 0 indicates that command was sucessful
# other than 0 indicated that command was not sucessful

<<info 
suraj@ubuntu:~/shellscripts$ suraj
suraj: command not found
suraj@ubuntu:~/shellscripts$ echo $?
127
suraj@ubuntu:~/shellscripts$ pwd
/home/suraj/shellscripts
suraj@ubuntu:~/shellscripts$ echo $?
0
suraj@ubuntu:~/shellscripts$ 




suraj@ubuntu:~/shellscripts$ cd /root/
bash: cd: /root/: Permission denied
suraj@ubuntu:~/shellscripts$ echo $?
1
suraj@ubuntu:~/shellscripts$ 
info



