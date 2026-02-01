#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/log/shellscript"
LOGS_FILE="/var/log/shellscript/$0.log"

R="\e[31m"
G="\e[32m"
Y="\e[33m"
B="\e[34m"
N="\e[0m"

if [$USERID -ne 0]; then
 echo -e "$R Please run this script with root user access $N" | tee -a $LOGS_FILE
 exit 1
fi 

mkdir -p $LOGS_FOLDERS

VALIDATE(){

if [ $1 -ne 0 ]; then
 echo "$2....  FAILURE" | tee -a $LOGS_FILE
 exit 1
else
 echo  "$2.... SUCCESS" | tee -a $LOGS_FILE
fi

}

for package in $@ #sudo sh 1loops.sh nginx mysql nodejs

do
 dnf list installed $package &>>$LOGS_FILE
 if [ $? -ne 0 ]; then
  echo  "$package not installed, Installing now"

  dnf install $package -y &>>LOGS_FILE
  VALIDATE $? "$package installation"
 else 
   echo -e "$package already installed, $Y Skipping $N"
   
 fi

done