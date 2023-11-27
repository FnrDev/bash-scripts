#!/bin/bash
num=0
sum=0
while [ $num -ne -99  ]
do
	echo "Please enter a number or type -99 to exit"
	read num

	if [ $num -ne -99  ]
	then
		sum=$(($sum + $num))
	fi
done
echo "The sum of all numbers is $sum"
