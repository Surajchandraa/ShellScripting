#!/bin/bash

#monitoring free RAM space

<<ex
suraj@ubuntu:~/shellscripts$ free
               total        used        free      shared  buff/cache   available
Mem:         7916104     2786388     3024088      514160     2913136     5129716
Swap:        4194300           0     4194300
suraj@ubuntu:~/shellscripts$ free -h
               total        used        free      shared  buff/cache   available
Mem:           7.5Gi       2.6Gi       2.9Gi       500Mi       2.8Gi       4.9Gi
Swap:          4.0Gi          0B       4.0Gi
suraj@ubuntu:~/shellscripts$ free -h
               total        used        free      shared  buff/cache   available
Mem:           7.5Gi       2.0Gi       3.5Gi       317Mi       2.6Gi       5.5Gi
Swap:          4.0Gi          0B       4.0Gi
suraj@ubuntu:~/shellscripts$ free -mt
               total        used        free      shared  buff/cache   available
Mem:            7730        2070        3598         306        2654        5660
Swap:           4095           0        4095
Total:         11826        2070        7694
suraj@ubuntu:~/shellscripts$ free -mt | grep "Total"
Total:         11826        2054        7710
suraj@ubuntu:~/shellscripts$ free -mt | grep "Total" | awk '{print $4}'
7698
suraj@ubuntu:~/shellscripts$ 
ex

free_ram=$(free -mt | grep "Total" | awk '{print $4}')
threshold_value=500

if [ $free_ram -lt $threshold_value ]
then 
    echo "warning ram is low $free_ram M"
else 
    echo "Ram space is sufficient $free_ram M"
fi