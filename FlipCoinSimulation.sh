#!/bin/bash -x 

headsCount=0
tailsCount=0
count=0
while (( $headsCount<21 && $tailsCount<21 ))
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
if [ $headsCount -gt $tailsCount ]
then
	winHead=$(($headsCount-$tailsCount))
	echo "Heads Won and Win difference is $winHead"
elif [ $headsCount -lt $tailsCount ]
then
	winTail=$(($tailsCount-$headsCount))
	echo "Tails Won and Win difference is $winTail"
else
echo "Tie"
fi
