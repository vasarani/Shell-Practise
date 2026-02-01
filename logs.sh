#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/log/shellscript"
LOGS_FILE="/var/log/shellscript/$0.log"


if [$USERID -ne 0]; then
 echo "Please run this script with root user access" | tee -a $LOGS_FILE
 exit 1
fi 

mkdir -p $LOGS_FOLDERS

VALIDATE(){

if [ $1 -ne 0 ]; then
 echo "$2.... FAILURE" | tee -a $LOGS_FILE
 exit 1
else
 echo  "$2.... SUCCESS" | tee -a $LOGS_FILE
fi

}

dnf install nginx -y &>> $LOGS_FILE
VALIDATE $? "Nginx Installation"

dnf install mysql -y &>> $LOGS_FILE
VALIDATE $? "MySQL Installation"

dnf install nodejs -y &>> $LOGS_FILE
VALIDATE $? "Nodejs Installation"