#!/bin/bash -x
read -p "Enter a mobile number : " password
passwordPattern="^[A-Za-z0-9!@#$%^&*+]{8,}$"
if [[ $password =~ $passwordPattern ]]
then
        echo valid Password
else
        echo Invalid Password
shopt -s extglob
read -p "Enter your first name : " firstName
firstNamePattern="^[[:upper:]]{1}[a-z]{2,}"
if [[ $firstName =~ $firstNamePattern ]]
then
        echo valid first name
else
        echo not valid first name
fi
