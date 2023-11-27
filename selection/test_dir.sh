#!/bin/bash
if [ $# -ne 1 ]
then
	echo 'only one arg accepted'
elif [ -d $1 ]
then
	echo 'dir exist'
elif [ -e $1 ]
then
	echo 'file is directory'
else
	echo 'file is file'
fi
