#!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Please run the script with root user access"
exit 1
fi

Validate(){
    if [ $1 -ne 0]; then
    echo "$2 failed"
    exit 1
    else
    echo "$2 success"
    fi
    }

dnf install nginx -y

Validate $? "Install nginx"

dnf install mysql -y

Validate $? "Install mysql"

dnf install nodejs -y
Validate $? "Install nodejs"