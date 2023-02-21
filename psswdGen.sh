#!/bin/bash
echo 'Simple PAsswORd Generater' | toilet -f digital | lolcat -a
echo 'Now create Your Password easily'
echo 'Enter the length of your password: '
read PASS_LENGTH
for p in $(seq 1);
do
	openssl rand -base64 48 | cut -c1-$PASS_LENGTH >> $PWD/key
	cat  $PWD/key
	echo 'All passwords Are saved in key file Keep it safe'
done 
