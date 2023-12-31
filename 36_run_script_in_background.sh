#!/bin/bash

<<use
if your script is taking 1 hour to execute than while its execution you can not do other tasks with terminal
if you close the terminal script execution will be stop.

for these issues use nohup it will run your script in background and you can close terminal also it will not stop and you can perform other tasks also with that script execution.

steps-

chmod +x *
use

<<ex
nohup ./14_for_loop.sh &
[1] 9673
nohup: ignoring input and appending output to 'nohup.out'
suraj@ubuntu:~/shellscripts$ cat nohup.out 
[1]+  Done                    nohup ./14_for_loop.sh
number is 1
you are not root user
numer is 1
numer is 2
numer is 3
numer is 4
numer is 5
type2 number is 1
type2 number is 2
type2 number is 3
type2 number is 4
type2 number is 5
type2 number is 6
type2 number is 7
type2 number is 8
type2 number is 9
type2 number is 10
type 3:     name is suraj
type 3:     name is rahul
type 3:     name is sakshi
type 3:     name is suresh
suraj@ubuntu:~/shellscripts$ 
ex