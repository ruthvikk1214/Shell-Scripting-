#!/bin/bash
USERID=$(id -u)

LOG_FOLDER="/var/log/shell-scripting"
LOG_FILE="/var/log/shell-scripting/$0.log"

if [ $USERID -ne 0 ]; then
    echo "Please run the script with root user access"
exit 1
fi

mkdir -p $LOG_FOLDER

Validate(){
    if [ $1 -ne 0]; then
    echo "$2 failed"
    exit 1
    else
    echo "$2 success"
    fi
    }

dnf install nginx -y

Validate $? "Install nginx" &>> $LOG_FILE

dnf install mysql -y

Validate $? "Install mysql" &>> $LOG_FILE

dnf install nodejs -y
Validate $? "Install nodejs" &>> $LOG_FILE