#!bin/bash -x

flips=$(( RANDOM % 2))

if [ $flips -eq 0 ];
then 
	echo "tails"
else
   echo "heads"
fi
