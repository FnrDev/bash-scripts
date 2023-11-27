#!/bin/bash
echo "The date and time the script was run: " > temp.txt
echo "------------------------------------------" >> temp.txt
date +"Year: %Y %D%nTime: %T" >> temp.txt
echo "------------------------------------------" >> temp.txt
echo "Full details on the name of the system" >> temp.txt
echo "------------------------------------------" >> temp.txt
uname -a >> temp.txt
echo "------------------------------------------" >> temp.txt
echo "Disk free information, in human readable format" >> temp.txt
echo "------------------------------------------" >> temp.txt
df -h >> temp.txt
echo "------------------------------------------" >> temp.txt
echo "Infomation about the CPU" >> temp.txt
echo "------------------------------------------" >> temp.txt
lscpu >> temp.txt
# sending the email with subject "Lab 7" and body of file "temp.txt"
mail -s "Lab 7" $1 < temp.txt
rm temp.txt
