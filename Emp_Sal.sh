#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program on Master Branch"

WagePerHr=20
FullDay=8
PartDay=4
Dayoff=0

x=$((RANDOM % 2))

	if [ $x -eq  1 ]
	then
	y=$(($FullDay * $WagePerHr))
	echo "FullDay"
	elif [ $x -eq 2 ]
	then
	y=$(($PartDay * $WagePerHr))
	echo "PartDay"
	else
	y=$(($Dayoff * $WagePerHr))
	echo "Dayoff"
	fi

echo "Wage is :- "$y
