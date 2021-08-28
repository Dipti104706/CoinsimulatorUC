#!/bin/bash -x 

read -p "Enter the number of flip:" n
headsCount=0
tailsCount=0
count=0

for (( i=1; i<=n; i++ ))
	do
	flip=$(($((RANDOM%10))%2))
 	if [ $flip -eq 1 ]
	then
		echo "Heads"
		headsCount=$(($headsCount+1))
	else
		echo "Tails"
		tailsCount=$(($tailsCount+1))
		count=$(($count+1))
	fi
done
echo "Heads=$headsCount"
echo "Tails=$tailsCount"
