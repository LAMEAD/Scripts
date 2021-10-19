#!/usr/bin/bash
# read pauses the console and allows a user to input some string text.
# read <var> read in charactars until enter/carriage return.
# read -t <sec> <var> will read in characters but w/ 30 second timeout.
# read -n <nchars> <var> will read in chars until you get to specific  amount of chars specified.
# $VAR = Item on Honey To Do List

############# CREATOR NOTES ############
############ STRETCH GOAL ##############
# Export into time stamp database
# Be able to change colors later (C = green, NC = red, R= yellow )
# Format clean-up on display to user

#######################################



echo "The Honey To Do List"
head < honeytodo.lst

read -t 10 VAR

#USER INPUT
if [ -n "$VAR" ]
then echo "Added task to Honey To Do List"
else echo "No input was detected"

fi

FILES=$( cat honeytodo.lst )
echo "${FILES[0]}"

	d="$(date)"
	t="$(date +%s)"
	echo "$VAR"
	read i </dev/tty

	if [ "$i" = "c" ]; then
		i="complete"
		echo "$t,$d,$VAR,$i" >> honeytodo.lst
	elif [ "$i" = "nc" ]; then
		i="not complete"
		echo "$t,$d,$VAR,$i" >> honeytodo.lst
	else [ "$i" = "r" ]
		i="reminder"
		echo "$t,$d,$VAR,$i" >> honeytodo.lst
fi
