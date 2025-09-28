#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then 
    echo "Please run this script"
    exit 1 # failure is other than 0
fi

sudo dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "Error : Installing My SQL failed"
    exit 1 
else
    echo "Installing mySQL is Success"
fi

sudo dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "Error : Installing nginx failed"
    exit 1 
else
    echo "Installing nginx is sucess"
fi

sudo dnf install mongodb-mongosh -y

if [ $? -ne 0 ]; then
    echo "Error : Installing mongodb-mongosh failed"
    exit 1 
else
    echo "Installing mongodb-mongosh is Success"
fi