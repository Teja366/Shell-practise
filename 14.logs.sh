#!/bin/bash

USERID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOG_PATH="var/log/shell-script"
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOG_FILE="$LOG_PATH/$SCRIPT_NAME.logs"

mkdir -p $LOG_PATH
echo "Script started Executing at $data"
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

dnf list installed mysql &??$LOG_FILE

if [ $? -ne 0 ]; then 
    dnf install mysql -y &??$LOG_FILE
	VALIDATE $? "MySQL"
else
	echo -e "Already MySQL is installed .. $Y Skipping $N "
fi

dnf list installed nginx &??$LOG_FILE

if [ $? -ne 0 ]; then 
    dnf install nginx -y &??$LOG_FILE
	VALIDATE $? "NGINX"
else
	echo -e "Already NGINX is installed .. $Y Skipping $N "
fi

dnf list installed python3 &??$LOG_FILE

if [ $? -ne 0 ]; then 
    dnf install python3 -y &??$LOG_FILE
	VALIDATE $? "python3"
else
	echo -e "Already python3 is installed .. $Y Skipping $N "
fi