#!/bin/bash
USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"

if [ $USERID -ne 0 ]; then
 echo "Please run this script with root user access" | tee -a $LOGS_FILE
 exit 1
fi

mkdir -p $LOGS_FOLDER

#By default shell will not execute, only executed when called
VALIDATE(){
    if [ $1 -ne 0 ]; then
     echo "$2.... FAILURE" | tee -a $LOGS_FILE
     exit 1
    else
     echo "$2.... SUCCESS" | tee -a $LOGS_FILE
    fi  
}
echo "Installing Nginx"
dnf install nginx -y &>> $LOGS_FILE # this will redirects the output to logs
VALIDATE $? "Nginx Installation" 

echo "Installing MySQL"
dnf install mysql -y &>> $LOGS_FILE
VALIDATE $? "MySQL Installation"

echo "Installing Nodejs"
dnf install nodejs -y &>> $LOGS_FILE
VALIDATE $? "Nodejs Installation"