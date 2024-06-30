#!/bin/bash

<<info
 break - to stop the loop

 continue - to stop current iteration of loop and start next iteration

 sleep - to create delay between two executions ex: sleep 1s/1m you can give time in second or minutes

exit - to stop script at a point 

exit status $? - gives you status of previous command if that was sucessful , 0 if command was sucessful

basename - strip directory info and only give filename.
suraj@ubuntu:~/shellscripts$ basename /home/suraj/shellscript/surajjoshi.txt
surajjoshi.txt
suraj@ubuntu:~/shellscripts$ 

dirname - strip the filename and gives directory path.
suraj@ubuntu:~/shellscripts$ dirname /home/suraj/shellscript/surajchandra.txt
/home/suraj/shellscript
suraj@ubuntu:~/shellscripts$ 



realpath - gives you full path for a file.
suraj@ubuntu:~/shellscripts$ realpath surajchandra.txt
/home/suraj/shellscripts/surajchandra.txt

suraj@ubuntu:~/shellscripts$ realpath hii
/home/suraj/shellscripts/hii





info
