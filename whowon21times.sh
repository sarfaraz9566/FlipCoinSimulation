#!/bin/bash -x

#Initializing tails count as 0.
tails=0
#Initializing heads count as 0.
heads=0
#for(( i=0; i<50; i++ ))
while(( $heads<21 && $tails<21 ))
do
	#Random function to display 0 and 1
	randomint=$(( RANDOM%2 ))
	if(( $randomint==0 ))
	then
		(( heads++ ))
	else
		(( tails++ ))
	fi
done
if(( $heads>$tails ))
then
	echo "Heads wins by $(( $heads-$tails ))"
elif(( $tails>$heads ))
then
	echo "Tails wins by $(( $tails-$heads ))"
elif(( $heads==$tails ))
then
	echo "It is a tie"
fi
