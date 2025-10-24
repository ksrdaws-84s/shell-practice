#!/bin/bash

USERID=$(id -u)

if [ ${USERID} -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
    exit 1 #Give other than 0 upto 127
else
    echo "You are running with root access"
fi

dnf list installed mysql

# Check alredy installed or not...if installed $? is 0, ...then 
# if not installed $? is not 0. so expression is True
if [ $? -ne 0 ]
then 
    echo "MySQL is not installed ... going to install it...Please wait while...."
    dnf install mysql -y
    if [ $? -eq 0 ]
    then 
        echo "Installing MySQL is ...SUCCESS"
    else
        echo "Installing MySQL is ... FAILURE"
        exit 1
    fi
else
    echo "MySQL is alredy install...Nothing to do..."
fi

# dnf install mysql -y

# if [ $? -eq 0 ]
# then 
#     echo "Installing MySQL is ...SUCCESS"
# else
#     echo "Installing MySQL is ... FAILURE"
#     exit 1
# fi