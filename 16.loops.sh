#!/bin/bash

USERID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
#LOG_PATH="/tmp/$SCRIPT_NAME"
LOG_FILE="/tmp/$SCRIPT_NAME.logs"

#mkdir -p $LOG_PATH
echo "Script started Executing at $(date)"
if [ $USERID -ne 0 ]; then 
    echo "Please run this script"
    exit 1 # failure is other than 0
fi

VALIDATE(){
	if [ $1 -ne 0 ]; then
		echo -e "$R Installing $2 failed $N"
		exit 1 
	else
		echo -e "$G Installing $2 is Success $N"
	fi
}


for package in $@
do
    
    dnf list installed $package &>>$LOG_FILE


    if [ $? -ne 0 ]; then
        dnf install $package -y &>>$LOG_FILE
        VALIDATE $? "$package"
    else
        echo -e "$package already installed ... $Y SKIPPING $N"
    fi
done