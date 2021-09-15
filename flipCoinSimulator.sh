#!/bin/bash
#Random function to display 0 and 1
randomint=$(( RANDOM%2 ))
#If condition to print heads win if it is 0 and print tails win if it is 1.
if(( $randomint==0 ))
then
	echo "Heads win."
else
	echo "Tails win."
fi

