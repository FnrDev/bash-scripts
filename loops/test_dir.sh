#!/bin/bash
function usage {
   echo "Incorrect usage, keep in mind. ONLY ONE ARG ACCEPTED"
}
if [ $# -ne 1 ]
then
	usage
elif [ -d $1 ]
then
	echo 'dir exist'
elif [ -e $1 ]
then
	echo 'file is directory'
else
	echo 'file is file'
fi
