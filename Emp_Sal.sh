#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program on Master Branch"

x=$((RANDOM % 2))

if [ $x -eq 1 ]
then
	echo "Is Present"
else
	echo "Is Absent"
fi
