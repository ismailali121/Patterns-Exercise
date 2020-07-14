#!/bin/bash -x
read -p "Enter a mobile number : " number
format="^[9][1][ ][0-9]{10}$"
if [[ $number =~ $format ]]
then
        echo valid number
else
        echo Invalid number
fi
