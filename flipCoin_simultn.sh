#!bin/bash -x

read -p "Enter a value: " n
head_counts=0;
tails_counts=0;

for(( i=0;i<=n;i++ ));
do

	flips=$(( RANDOM % 2))

	if [ $flips -eq 0 ];
	then 
		echo "Flip-$i Tails"
		(( head_counts++ ))
	else
   	echo "Flip-$i Heads"
		(( tails_counts++ ))
	fi
done

echo "The Heads count is $heads_count and Tails Count is $tails_count"
if [ $head_counts -gt $tails_counts ];
then
    echo "Winner is Heads"
elif(( tails_count > heads_count ))
then
    echo "Winner is Tails"
else    
    echo "Its tie"
fi
