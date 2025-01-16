#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "error:: Please run this script as rootuser or with sudo."
    exit 1   # other than 0
fi


dnf install mysql -y

if [ $? -ne 0 ]
then
    echo "error:: Failed to install MySQL."
    exit 1
else
    echo "MySQL installation successful."
fi



dnf install git -y

if [ $? -ne 0 ]
then
    echo "error:: Failed to install GIT."
    exit 1
else
    echo "GIT installation successful."
fi