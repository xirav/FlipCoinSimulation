#!/bin/bash 
H=0
T=0
for i in `seq 45`
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

if [[ $H -gt $T ]]
then
	echo "HEAD WINS"
	foldername=$(($H-$T))
	echo "HEADS WON BY - " $foldername "TIMES"



elif [[ $H -lt $T ]]
then
	echo "TAIL WINs"
	folder=$(($T-$H))
	echo "TAILS WON BY - " $folder "TIMES"

else 
	echo "ITS a TIE"
fi
