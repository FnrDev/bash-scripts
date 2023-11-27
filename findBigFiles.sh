#!/bin/bash

# usage function will be called when incorrect usage of command used
function usage {
   echo "Incorrect usage"
   echo "Usage: ./findBigFiles [number of bytes]"
}

# function to allow trap exit
function trap_exit {
   echo -e "\n*******************************************"
   echo -e "\n\nEXITING ON A TRAPPED SIGNAL ..."
   echo -e "\n\n************************************"
}
# to allow exit from CTRL + C
trap 'trap_exit; exit 2' 1 2 3 15

# check the number of args, if it's not equal 1 exit
if [ $# -ne 1 ]
then
	usage
	exit 1
fi

# define datestamp variables and display the date
DATESTAMP=$(date -u +"%h%d,%Y,%T")
echo $DATESTAMP

# define the search path, for now we will use the current dirictory
SEARCH_PATH=$(pwd)

# define the file size
FILE_SIZE=$1

echo "Searching for Files larger then $FILE_SIZE MB starting in $SEARCH_PATH"
echo "Please standby for the search results ..."

# we will use find command to search about files in our dirictory
# the" m" after file size indicates megabytes
find -H $SEARCH_PATH -type f -size +"$FILE_SIZE"M > result.out

# check if the "result.out" is not an empty file
if [ -s result.out  ]
then
	lines=$(more result.out | wc -l)
	echo "Number of the files found: $lines"
	echo "Files found are: "
	cat result.out | more
else
	echo "No files were found that are larger than $FILE_SIZE MB"
	echo "Exiting"
fi
rm result.out
