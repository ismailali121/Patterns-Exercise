#!/bin/bash -x
read -p "Enter a mobile number : " password
passwordPattern="^[A-Za-z0-9!@#$%^&*+]{8,}$"
if [[ $password =~ $passwordPattern ]]
then
        echo valid Password
else
        echo Invalid Password
fi
