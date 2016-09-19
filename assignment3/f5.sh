#!/bin/bash

declare -a arr
ct=1

for (( i=0; i<5; i++ ))
do
   read arr[i]
done

#sorting
for (( i = 0; i < 4 ; i++ ))
do
for (( j = 0; j < $((4-$i-1)); j++ ))
do
if [ ${arr[$j]} -gt ${arr[$j+1]}  ];  then
t=${arr[$j]}
arr[$j]=${arr[$j+1]}
arr[$j+1]=$t
fi
done
done

echo ${arr[*]}

for (( i = 0; i < 5 ; ))
do
 ct=1
 j=i
 while [ "${arr[$i]}" == "${arr[$j+1]}" ]
 do
	ct=$((ct+1))
        j=$((j+1))
 done

echo "${arr[$i]}" is repeating $ct times
i=$(($i+$ct))

done

echo min = "${arr[0]}" max = "${arr[4]}"
