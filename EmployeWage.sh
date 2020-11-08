#!/bin/bash -x 
isPartTime=1
isFullTime=2
maxHrsInMonth=10
empRatePerHr=20
numWorkingDays=20

totalEmpHrs=0
totalWorkingDays=0

function getWorkingHours(){
	case $1 in
		$isPartTime)
			empHrs=4
			;;
		$isFullTime)
			empHrs=8
			;;
		*)
			empHrs=0
			;;
	esac
	echo $empHrs
}
while [[ $totalEmpHrs -lt $maxHrsInMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
	totalWorkingDays=$(($totalWorkingDays+1))
	empHrs="$(getWorkingHours $(( RANDOM%3 )) )"
	totalEmpHrs=$(($totalEmpHrs+$empHrs))
	totalSalary=$(($totalSalary+($totalEmpHrs*$empRatePerHr)))
done
