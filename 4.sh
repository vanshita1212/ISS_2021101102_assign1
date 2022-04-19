#!/bin/bash
declare -a inputArray
IFS=','     #delimiter
read -a inputArray

len=${#inputArray[@]}   #array length

for (( i = 0; i < $len ; i++ ))
do
    for (( j = $i; j < $len; j++ ))
    do
    if [ ${inputArray[i]} -gt ${inputArray[j]}  ];
    then
        num=${inputArray[i]}
        inputArray[i]=${inputArray[j]}
        inputArray[j]=$num
    fi
    done
done

echo "${inputArray[*]}"


