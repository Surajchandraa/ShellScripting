#!/bin/bash

# to create a user, provide username and description

echo "creating user"
echo "username is $1"

shift
echo "description is $@"
# all the arguments will become a single argument except first argument 