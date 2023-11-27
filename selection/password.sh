#!/bin/bash
password="1000"
echo 'Enter system password: '
read password_entry
if [ $password_entry -eq $password  ]
then
	echo 'You granted access to the system'
else
	echo 'Incorrect password'
fi
