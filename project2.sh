#!/bin/bash

# monitoring free disk space and send an alert email 


<<examplee
suraj@ubuntu:~/shellscripts$ df -h
Filesystem      Size  Used Avail Use% Mounted on
tmpfs           774M  2.2M  771M   1% /run
/dev/sda4       138G   36G   95G  28% /
tmpfs           3.8G  9.6M  3.8G   1% /dev/shm
tmpfs           5.0M  8.0K  5.0M   1% /run/lock
tmpfs           774M  108K  773M   1% /run/user/1000
suraj@ubuntu:~/shellscripts$ df -h | egrep -v "Filesystem|tmpfs"
/dev/sda4       138G   36G   95G  28% /
suraj@ubuntu:~/shellscripts$ df -h | egrep -v "Filesystem|tmpfs" | grep "sda4"
/dev/sda4       138G   36G   95G  28% /
suraj@ubuntu:~/shellscripts$ df -h | egrep -v "Filesystem|tmpfs" | grep "sda4" | awk '{print $5}' | tr -d %
28
suraj@ubuntu:~/shellscripts$ 


examplee

disk_space=$(df -h | egrep -v "Filesystem|tmpfs" | grep "sda4" | awk '{print $5}' | tr -d %)

if [ -n "$disk_space" ] && [ "$disk_space" -ge 90 ]
then 
    echo "Space is above 90 percent: $disk_space%"
    echo "Space is above 90 percent: $disk_space%" | mutt -s "Ubuntu Disk Space Alert" surajjosh7@gmail.com
else 
    echo "Disk space is sufficient: $disk_space%"
fi

