#!/bin/bash -x


echo "Welcome to Employee Wage Computation Program on Master Branch"

function full(){
FullDay=8
}
function part(){
PartDay=4
}
function DayOff()
{
Dayoff=0
}

WagePerHr=20
TotalWage=0
day=0
hours=0
while [ $day -lt 20 ] && [ $hours -le 100 ]
do
x=$((RANDOM % 2))

	case $x in
	0) full
	y=$(($FullDay * $WagePerHr))
	day=$(($day+1))
	hours=$(($hours+$FullDay))
	;;
	1) part
	y=$(($PartDay * $WagePerHr))
	day=$(($day+$((1/2))))
        hours=$(($hours+$PartDay))
	;;
	*) DayOff
	y=$(($Dayoff * $WagePerHr))
	day=$(($day+0))
        hours=$(($hours+$Dayoff))
	;;
	esac
	TotalWage=$(($TotalWage + $y))
done
echo "Wage is :- " $TotalWage
