#!/bin/bash

read -p "which site connectivity you want to check::" site
ping -c 1 $site


if [ $? -eq 0 ]
then 
    echo "sucessfully connected to $site"
else
    echo "unable to connect"
fi