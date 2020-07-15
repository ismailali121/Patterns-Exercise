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
