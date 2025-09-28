#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then 
    echo "Please run this script"
    exit 1 # failure is other than 0
fi

sudo dnf install mysqql -y

if [ $? -ne 0 ]; then
    echo "Error : Installing My SQL failed"
    exit 1 
else
    echo "Installing mySQL is Success"
fi