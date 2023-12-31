#!/bin/bash

# for repeatative job we use cronjob
# to check the existing jobs - crontab -l
# to add new job -crontab -e

* * * * * cd /home/suraj/shellscripts && ./examplefile.sh
* minute(0-59) (firststar)
* hour(0-23)
* day of month(1-31)
* month (1-12)
* day of week(0-6) (sunday=0)

if you dont give any value just write 5 start * * * * * than script will run in each minute

for learning crontab website - https://crontab.guru/