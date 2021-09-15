#!/bin/bash -x
#Initializing heads count as 0.
heads=0
tails=0
for(( i=0; i<50; i++ ))
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
fi
if(( $heads==$tails ))
then
	while(( $heads<27 && $tails<27 ))
	do
   	randominteger=$(( RANDOM%2 ))
		if(( $randomint==0 ))
   	then
      	(( heads++ ))
   	else
      	(( tails++ ))
   	fi

   	if(( $heads-$tails>=2 ))
   	then
      	echo "Heads win"
   	elif(( $tails-$heads>=2 ))
   	then
      	echo "Tails win"
		fi
	done
fi
