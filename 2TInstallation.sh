#!/bin/bash

USERID=$(id -u)
if [$USERID -ne 0]; then
 echo "Please run this script with root user access"
 exit 1
fi 
 #by default shell will not execute, only executed when we called

VALIDATE(){

if [ $1 -ne 0 ]; then
 echo "$2.... FAILURE"
 exit 1
else
 echo  "$2.... SUCCESS"
fi

}

dnf install nginx -y
VALIDATE $? "Nginx Installation"

dnf install mysql -y
VALIDATE $? "MySQL Installation"

dnf install nodejs -y
VALIDATE $? "Nodejs Installation"
