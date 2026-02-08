#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0 ]; then
    echo "Please run the script with root user access"
exit 1
fi
echo " installing nginx"
dnf install nginx -y
if [ $? -ne 0 ] ; then
 echo " THe installation failed"
 exit 1
else
 echo " nginx installed successfully"
fi