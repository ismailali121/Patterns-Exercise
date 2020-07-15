function firstName {
        shopt -s extglob
        flag=0
        firstNamePattern="^[[:upper:]]{1}[[:lower:]]{2,}$"
        while [[ $flag -eq 0 ]]
        do
                echo "Enter your first name : "
                read firstName
                if [[ $firstName =~ $firstNamePattern ]]
                then
                        echo valid first name
                        ((flag++))
                        break
                else
                        echo not valid first name. First letter should be CAPITAL
                fi
        done
}
firstName

function lastName {
        shopt -s extglob
        flag=0
        lastNamePattern="^[[:upper:]]{1}[[:lower:]]{2,}$"
        while [[ $flag -eq 0 ]]
        do
                echo "Enter your last name : "
                read lastName
                if [[ $lastName =~ $lastNamePattern ]]
                then
                        echo valid last name
                        ((flag++))
                        break
                else
                        echo not valid last name. First letter should be CAPITAL
                fi
        done
}
lastName

function emailValidation () {
	shopt -s extglob
	pattern="^[a-zA-Z0-9]+([.+_-]{1}[a-zA-Z0-9]{3,}){0,2}\@[a-zA-Z0-9]+(\.[a-z]+){1,3}$"
	while [[ $flag==0 ]]
	do
		echo "Enter your Email ID : "
        	read char
        	if [[ $char =~ $pattern ]]
        	then
                	echo Email ID is valid
                	((flag++))
                	break
        	else
                	echo Email Id is Invalid
        	fi
	done

}
emailValidation

function validateMobileNumber () {
        flag=0
        format="^[9][1][ ][0-9]{10}$"
        while [[ $flag -eq 0 ]]
        do
                read -p "Enter a mobile number : " number
                if [[ $number =~ $format ]]
                then
                        echo valid number
                        ((flag++))
                        break
                else
                        echo Invalid number
                fi
        done
}
validateMobileNumber

function passwordValidation(){
        flag=0
        specialCharacter="^[A-Za-z0-9]*[@#$%&=*_-]{1}[A-Za-z0-9]*$"
        while [[ $flag -eq 0 ]]
        do
                echo "Enter the password"
                read  password
                if [[ ${#password} -ge 8 ]]
                then
                        echo valid password
                        ((flag++))
                        break
                else
                        echo The password is INVALID. It must satisfy all the following conditions
                        echo The password must be ATLEAST of 8 characters



                fi
        done
}
passwordValidation

