#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program on Master Branch"

WagePerHr=20
FullDay=8
PartDay=4
Dayoff=0
TotalWage=0
day=0
hours=0
while [ $day -lt 20 ] && [ $hours -le 100 ]
do
x=$((RANDOM % 2))

	case $x in
	0) 
	y=$(($FullDay * $WagePerHr))
	day=$(($day+1))
	hours=$(($hours+$FullDay))
	;;
	1)
	y=$(($PartDay * $WagePerHr))
	day=$(($day+$((1/2))))
        hours=$(($hours+$PartDay))
	;;
	*)
	y=$(($Dayoff * $WagePerHr))
	day=$(($day+0))
        hours=$(($hours+$Dayoff))
	;;
	esac
	TotalWage=$(($TotalWage + $y))
done
echo "Wage is :- " $TotalWage
