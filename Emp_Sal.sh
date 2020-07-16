#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program on Master Branch"

WagePerHr=20
FullDay=8

x=$((RANDOM % 2))

if [ $x -eq 1 ]
then
	echo "Is Present"
	y=$(($WagePerHr * $FullDay))
	echo "Wage is : " $y
else
	echo "Is Absent"
fi

