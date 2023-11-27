#!/bin/bash
echo "The script is called: $0"
echo "The arguments are:"
counter=0
while [ $counter -lt $# ]
do
	# how to get the argument by the index counter
	echo "$1"
	shift
done
