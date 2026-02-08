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


dnf install mysql -y
if [ $? -ne 0 ] ;then
echo " Myswl installation is failed"
exit 1
else 
echo "Mysql is installing"
fi

dnf install nodejs -y
if [ $? -ne 0 ] ;then
echo " nodejs installation is failed"
exit 1
else 
echo "nodejs is installing"
fi