#!/bin/bash

read str
len=${#str}                #finding length of string
i=$((len-1))


while [ $i -ge 0 ];
do
	revstring=$revstring${str:$i:1}
	i=$((i-1))
done
echo $revstring           #print reversed string 


echo "$revstring" | tr a-z b-za | tr A-Z B-ZA  #tr replaces set1 field with set2 field


j=$((len/2 -1))

while [ $j -ge 0 ];
do
half1=$half1${str:$j:1}                 #reversed part
j=$((j-1))
done

half2=${str:len/2:len/2}


halfrev="$half1$half2"           #combining both strings

echo $halfrev                 #print half reversed string








