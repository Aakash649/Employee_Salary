#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program on Master Branch"

WagePerHr=20
FullDay=8
PartDay=4
Dayoff=0

x=$((RANDOM % 2))

	case $x in
	1) 
	y=$(($Fullday * $WagePerHr))
	;;
	2)
	y=$(($Partday * $WagePerHr))
	;;
	3)
	y=$(($DayOff * $WagePerHr))
	;;
	esac

echo "Wage is :- " $y
