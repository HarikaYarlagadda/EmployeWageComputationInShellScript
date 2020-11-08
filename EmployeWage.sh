#!/bin/bash 
isparttime=1;
isfulltime=2;
totalsalary=0;
emprateperhr=20;
numworkingdays=20;
for (( day=1; day<=$numworkingdays; day++ ))
do
	empcheck=$((RANDOM%3));
		case $empcheck in
			$isfulltime)
				emphrs=8
				;;
			$isparttime)
				emphrs=4
				;;
			*)
			emphrs=0
				;;
		esac
		salary=$(($emphrs*$emprateperhr));
		totalsalary=$(($totalSalary+$salary));
done
echo $totalsalary
