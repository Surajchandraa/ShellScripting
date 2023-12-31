#!/bin/bash


<<ex
for scheduling only one time, use at command
at 12:09
    < your command>
ctrl+D

atq to check scheduled job
atrm <id> to remove the schedule
ex



<<ex1
suraj@ubuntu:~/shellscripts$ date
Sun Dec 31 01:58:17 PM IST 2023
suraj@ubuntu:~/shellscripts$ at 02:00 PM
warning: commands will be executed using /bin/sh
at Sun Dec 31 14:00:00 2023
at> bash /home/suraj/shellscripts/35_debugging.sh
at> <EOT>
job 1 at Sun Dec 31 14:00:00 2023
suraj@ubuntu:~/shellscripts$ atq
1       Sun Dec 31 14:00:00 2023 a suraj
suraj@ubuntu:~/shellscripts$ date
Sun Dec 31 02:00:17 PM IST 2023
suraj@ubuntu:~/shellscripts$ atq
suraj@ubuntu:~/shellscripts$ 
ex1

# these jobs runs in the background you will not see the output in the terminal
# you can store output in log or do some tasks automation


<<ex3
suraj@ubuntu:~/shellscripts$ date
Sun Dec 31 02:02:47 PM IST 2023
suraj@ubuntu:~/shellscripts$ at 12:00 PM  1 Jan 2024
warning: commands will be executed using /bin/sh
at Mon Jan  1 12:00:00 2024
at> echo Hello>test.txt
at> <EOT>
job 2 at Mon Jan  1 12:00:00 2024

atq
2       Mon Jan  1 12:00:00 2024 a suraj
suraj@ubuntu:~/shellscripts$ 

suraj@ubuntu:~/shellscripts$ atrm 2
suraj@ubuntu:~/shellscripts$ atq
suraj@ubuntu:~/shellscripts$ 
ex3