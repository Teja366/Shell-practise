#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then 
    echo "Please run this script"
    exit 1 # failure is other than 0
fi

VALIDATE(){
	if [ $1 -ne 0 ]; then
		echo "Error : Installing $2 failed"
		exit 1 
	else
		echo "Installing $2 is Success"
	fi
}

dnf install mysql -y
VALIDATE $? "MySQL"

dnf install nginx -y
VALIDATE $? "Nginx"

dnf install python3 -y
VALIDATE $? "python3"