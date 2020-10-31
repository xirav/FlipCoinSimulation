#!/bin/bash 
H=0
T=0
for i in `seq 10`
do

	flip=$(($RANDOM%2))

	if [[ $flip == 1 ]]
	then
		echo "HEADS"
		((H++))
	else
		echo "TAILS"
		((T++))
	fi

done
echo $H
echo $T
