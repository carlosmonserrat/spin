#!/bin/sh

BIN=/usr/bin

if [ -d $BIN ]
then
	if [ -f main.c ]
	then
        make 
		cp spin* $BIN
		chmod 755 $BIN/spin
		echo "installed spin as $BIN/spin"
	else
		echo "error: cannot find spin"
		exit 1
	fi
else
	echo "error: cannot find installation directory $i"
	exit 1
fi

exit 0
