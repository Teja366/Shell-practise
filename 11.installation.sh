#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then 
    echo "Please run this script"
fi

sudo dnf install mysqql -y

if [ $? -ne 0 ]; then
    echo "Error : Installing My SQL failed"
else
    echo "Installing mySQL is Success"
fi