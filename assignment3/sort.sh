#!/bin/bash

declare -a array

pos=0
neg=0
zer=0

for((i=0; i<10; i++))
do
	read array[i]
done

for((i=0; i<10; i++))
dow
	if [ ${array[$i]} - lt 0 ]
		then 
		neg=`expr $neg + 1`
	elif [ ${array[$i]} -gt 0 ]
		then
		pos=`expr $pos + 1`
	else
		zer=`expr $zer + 1`
	fi
done

echo $pos

