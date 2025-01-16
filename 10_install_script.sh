#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "error:: Please run this script as rootuser or with sudo."
fi

dnf install git -y

