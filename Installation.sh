#!/bin/bash

USERID=$(id -u)
if [$USERID -ne 0]; then
 echo "Please run this script with root user access"
 exit 1
fi 
 echo "Installing Nginx"
 dnf install nginx -y

if [ $? -ne 0 ]; then 
 echo "Installing Nginx... FAILURE"
 exit 1
else  
   echo "Installing Nginx... SUCCESS"
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
 echo "Installing MySQL.... FAILURE"
 exit 1
else
 echo "Installing MySQL.... SUCCESS"
fi

dnf install node.js -y

if [ $? -ne 0 ]; then
 echo "Installing Nodejs.... FAILURE"
 exit 1
else
 echo  "Installing Nodejs.... SUCCESS"
fi

  