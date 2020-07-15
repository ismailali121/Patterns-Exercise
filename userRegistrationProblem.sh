#!/bin/bash -x
shopt -s extglob
read -p "Enter your first name : " firstName
firstNamePattern="^[[:upper:]]{1}[a-z]{2,}"
if [[ $firstName =~ $firstNamePattern ]]
then
        echo valid first name
else
        echo not valid first name
fi
