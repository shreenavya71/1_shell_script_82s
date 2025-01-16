#!/bin/bash

USERID=$(id -u)

VALIDATE(){               # function
if [ $1 -ne 0 ]           # $1 means argument 1 from the VALIDATE function $?
    then
        echo "$2.......FAILURE."
        exit 1
    else
        echo "$2........SUCCESS."
    fi
}


if [ $USERID -ne 0 ]
then
    echo "error:: Please run this script as rootuser or with sudo."
    exit 1                                                                                          # other than 0
fi

dnf list installed mysql                                                        # checking whether the mysql is installed or not

if [ $? -ne 0 ]                                                                 # mysql is not installed 1 -ne 0 is true then it will install mysql, 0 -ne 0 is false then mysql is already installed
then
    dnf install mysql -y
    VALIDATED $? "Installing MYSQL"                                # $? stores previous commands output 0 or 1, $? and installling mysql are arguments passed to the function
else
    echo "MySQL is already installed."
fi



dnf list installed git                                      # checking whether the git is installed or not

if [ $? -ne 0 ] 
then
    dnf install git -y
    VALIDATE $? "Installing GIT"                                    
else
    echo "GIT is already.......installed."
fi