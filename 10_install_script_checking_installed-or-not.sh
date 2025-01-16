#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "error:: Please run this script as rootuser or with sudo."
    exit 1   # other than 0
fi

dnf list installed mysql # checking whether the mysql is installed or not

if [ $? -ne 0 ] # mysql is not installed 1 -ne 0 is true then it will install mysql, 0 -ne 0 is false then mysql is already installed
then
    dnf install mysql -y
    if [ $? -ne 0 ]
    then
        echo "error:: Failed to install MySQL."
        exit 1
    else
        echo "MySQL installation successful."
    fi
else
    echo "MySQL is already installed."
fi



dnf list installed git # checking whether the git is installed or not

if [ $? -ne 0 ] 
then
    dnf install git -y
    if [ $? -ne 0 ]
    then
        echo "error:: Failed to install GIT."
        exit 1
    else
        echo "GIT installation successful."
    fi
else
    echo "GIT is already installed."
fi