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

function calDailyWages(){
	totalWorkHrs=$1;
	wages=$(( $totalWorkHrs*$empRatePerHr ))
	echo $wages;
}
while [[ $totalEmpHrs -lt $maxHrsMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
	totalWorkingDays=$(($totalWorkingDays+1))
	empHrs="$(getWorkingHours $(( RANDOM%3)) )"
	totalEmpHrs=$(($totalEmpHrs+$empHrs))
	empDailyWages[$totalWorkingDays]="$(calDailyWages $empHrs)"
done
totalSalary="$(calDailyWages $totalEmpHrs)"
echo "daily wages :"${empDailyWages[@]}
echo "All Keys :"${!empDailyWages[@]}
