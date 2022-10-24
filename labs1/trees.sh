#!/usr/bin/bash
if [ ! -f ./tree1.sh ]
then
    echo "tree1.sh is missing."
    exit
elif [ ! -f ./tree2.sh ]
then
    echo "tree2.sh is missing."
    exit
fi

while true
do
    echo -e "------MENU------\n 1 - tree1\n 2 - tree2\n 3 - exit\n\nChoose an option:"
    read option
    if [ "$option" == "1" ] || [ "$option" == "2" ]
    then
        echo "Enter rows number: "
        read rows
    fi
    case "$option" in 
        1) ./tree1.sh $rows;;
        2) ./tree2.sh $rows;;
        3) exit;;
        *) echo "Invalid option";;
    esac
done