#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program on Master Branch"

WagePerHr=20
FullDay=8
PartDay=4
Dayoff=0

x=$((RANDOM % 2))

	case $x in
	0) 
	y=$(($FullDay * $WagePerHr))
	;;
	1)
	y=$(($PartDay * $WagePerHr))
	;;
	*)
	y=$(($Dayoff * $WagePerHr))
	;;
	esac

echo "Wage is :- " $y
