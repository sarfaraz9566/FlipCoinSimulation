#!/bin/bash

#Initializing tails count as 0.
tails=0
#Initializing heads count as 0.
heads=0
for(( i=0; i<10; i++ ))
do
	#Random function to display 0 and 1
	randomint=$(( RANDOM%2 ))
	if(( $randomint==0 ))
	then
		echo "Heads win."
		(( heads++ ))
	else
		echo "Tails win."
		(( tails++ ))
	fi
done
echo "Number of times tails won is $tails"
echo "Number of times heads won is $heads"

