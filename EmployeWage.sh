#! /bin/bash
echo "welcome to employe wage computation program "
empattendance=$(( RANDOM%2 ))
if [ $empattendance -eq 0 ]
then
        echo "employee is absent"
else
        echo "employe is present"
fi

