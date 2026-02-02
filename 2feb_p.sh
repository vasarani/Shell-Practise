#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0 ]; then
 echo "Please run this script with root user access"
 exit 1
fi
#By default shell will not execute, only executed when called
VALIDATE(){
    if [ $1 -ne 0 ]; then
     echo "$2.... FAILURE"
     exit 1
    else
     echo "$2.... SUCCESS"
    fi  
}
echo "Installing Nginx"
dnf install nginxfg -y
VALIDATE $? "Nginx Installation"

echo "Installing MySQL"
dnf install mysql -y
VALIDATE $? "MySQL Installation"

echo "Installing Nodejs"
dnf install nodejs -y
VALIDATE $? "Nodejs Installation"
