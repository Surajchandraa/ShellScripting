#!/bin/bash

# Creating local user

if [ $UID -ne 0 ]; then
    echo "Please run with sudo or root"
    exit 1
fi

if [ $# -lt 1 ]; then
    echo "USAGE: $0 USERNAME [COMMENT]"
    echo "First argument should be username, and comment is optional"
    exit 1
fi

username="$1"
comment="$2"

if id "$username" &>/dev/null; then
    echo "User '$username' already exists."
    exit 1
fi

# Generate a random password
password=$(openssl rand -base64 12)

# Create the user with comment (if provided)
if [ -n "$comment" ]; then
    useradd -c "$comment" -m "$username"
else
    useradd -m "$username"
fi

# Check if useradd was successful
if [ $? -ne 0 ]; then
    echo "Failed to create account for '$username'"
    exit 1
fi

# Set the user's password
echo "$username:$password" | chpasswd

# Check if password setting was successful
if [ $? -ne 0 ]; then
    echo "Failed to set password for '$username'"
    exit 1
fi

# Expire the user's password to enforce change on first login
chage -d 0 "$username" 

echo
echo "USERNAME: $username"
echo "PASSWORD: $password"
echo
